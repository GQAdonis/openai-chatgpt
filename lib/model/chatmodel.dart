import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:openai_chat/model/chat_response.dart';
import 'package:openai_chat/repository/openai_repository.dart';
import 'package:openai_chat/utils/failure.dart';
import 'package:openai_chat/widgets/ai_message.dart';
import 'package:openai_chat/widgets/loading.dart';
import 'package:openai_chat/widgets/tracked_widget.dart';
import 'package:openai_chat/widgets/user_message.dart';

/// Chat Model
class ChatModel extends ChangeNotifier {
  /// List of messages.
  List<ChatResponse> messages = [];

  /// Message list getter.
  List<ChatResponse> get getMessages => messages;

  /// get the prompt
  String? prompt;

  /// Sends chat request to OpenAI chat server.
  Future<void> sendChat(String txt) async {

    //addUserMessage(txt, '$digest');

    final response =
        await OpenAiRepository.sendMessage(prompt: txt);

    Failure? failure;
    ChatResponse? chatResponse;
    response.fold((l) => failure = l, (r) => chatResponse = r);

    if (response.isLeft()) {
      throw failure!;
    }

    //remove the last item
    messages..removeLast()
    ..add(chatResponse!);

    notifyListeners();
  }

  /// Adds a new message to the list.
  /*void addUserMessage(String txt, String hash) {
    messages..add(UserMessage(
        text: txt,
      textHash: hash,
    ),)
    ..add(const Loading(text: '...'));
    notifyListeners();
  }*/
}
