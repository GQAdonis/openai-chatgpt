import 'dart:convert';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openai_chat/model/chat_response.dart';
import 'package:openai_chat/widgets/tracked_widget.dart';

/// Rendering state
enum RenderingState {
  /// Not rendered
  none,
  /// Rendering complete
  complete
}

/// AI Message class
class AiMessage extends StatefulWidget implements TrackedWidget {

  /// Constructor
  AiMessage({
    super.key,
    required this.text,
    this.textHash,
    this.messageText,
  }) {
    messageText = text;
  }

  /// Message text
  final String text;

  @override
  State<AiMessage> createState() => _AiMessageState();

  @override
  final String? textHash;

  @override
  final String? messageText;

  @override
  set messageText(String? txt) {
    messageText = txt;
  }

}

class _AiMessageState extends State<AiMessage> {
  RenderingState renderingState = RenderingState.none;
  Size renderSize = Size.zero;
  GlobalKey textKey = GlobalKey();

  static final _viewMap = <String, String>{};

  @override
  Widget build(BuildContext context) {
    final bytes = utf8.encode(widget.text);         // data being hashed
    final digest = sha256.convert(bytes);

    return Container(
      color: const Color(0xff444654),
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                color: const Color(0xff0fa37f),
                padding: const EdgeInsets.all(3),
                child: SvgPicture.asset(
                  'images/ai-avatar.svg',
                  height: 30,
                  width: 30,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: renderingState != RenderingState.complete &&
                !_viewMap.containsKey('$digest')
                ? AnimatedTextKit(
                    key: textKey,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        widget.text,
                        textStyle: const TextStyle(
                          color: Color(0xffd1d5db),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                    onFinished: () {
                      setState(() {
                        renderingState = RenderingState.complete;
                        renderSize = (textKey.currentContext != null
                            ? textKey.currentContext!.size
                            : const Size(300, 100))!;
                        _viewMap['$digest'] = widget.text;
                      });
                    },
                    totalRepeatCount: 1,
                  )
                : SizedBox(
                    width: renderSize.width,
                    height: renderSize.height,
                    child: SelectableText.rich(
                      TextSpan(
                          text: widget.text,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.white)),
                      onSelectionChanged: (selection, cause) async {
                        if (cause != null &&
                            cause == SelectionChangedCause.longPress) {
                          final selected = widget.text
                              .substring(selection.start, selection.end);
                          await Clipboard.setData(
                              ClipboardData(text: selected),);
                        }
                      },
                    ),),
          ),
        ],
      ),
    );
  }
}
