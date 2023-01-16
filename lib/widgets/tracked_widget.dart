
import 'package:openai_chat/model/chat_response.dart';

/// Widget tracked for content...
abstract class TrackedWidget {
  /// Chat Response getter
  String? get textHash;

  /// set text
  set messageText(String? txt);

  /// get text
  String? get messageText;
}
