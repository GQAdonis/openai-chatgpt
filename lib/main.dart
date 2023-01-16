import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:openai_chat/model/chat_response.dart';
import 'package:openai_chat/model/chatmodel.dart';
import 'package:openai_chat/model/gpt_choice.dart';
import 'package:openai_chat/model/gpt_usage.dart';
import 'package:openai_chat/model/log_problems.dart';
import 'package:openai_chat/widgets/ai_message.dart';
import 'package:openai_chat/widgets/tracked_widget.dart';
import 'package:openai_chat/widgets/user_input.dart';
import 'package:openai_chat/widgets/user_message.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive..registerAdapter(ChatResponseAdapter())
  ..registerAdapter(GptChoiceAdapter())
  ..registerAdapter(GptUsageAdapter())
  ..registerAdapter(LogProblemsAdapter());

  runApp(const MyApp());
}

/// Main app class
class MyApp extends StatefulWidget {
  /// Constructor
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final chatcontroller = TextEditingController();

    return MaterialApp(
      title: 'Open AI Chat',
      home: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: const Color(0xff343541),
          appBar: AppBar(
            backgroundColor: const Color(0xff343541),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Color(0xffd1d5db),
              ),
            ),
            elevation: 0,
            title: const Text('New Chat'),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Color(0xffd1d5db),
                ),
              ),
            ],
          ),
          body: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => ChatModel()),
            ],
            child: Consumer<ChatModel>(builder: (context, model, child) {
              final messages = model.getMessages;
              if (messages.isEmpty) {
                return Stack(
                  children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 80),
                  child: const Center(child: Text(
                    'No chat.',
                    style: TextStyle(color: Colors.white),),),
                ),
                    UserInput(
                      chatcontroller: chatcontroller,
                    )
                  ],
                );
              }
              return Stack(
                children: [
                  //chat
                  Container(
                    margin: const EdgeInsets.only(bottom: 80),
                    child: Column(
                      children: [
                        UserMessage(text: messages[0].prompt!),
                        const Divider(
                          color: Color(0xffd1d5db),
                        ),
                        ListView.builder(
                            itemBuilder: (context, index) {
                              final message = messages[index];
                              return Column(
                                children: [
                                  AiMessage(text: message.choices![0].text!),
                                  const Divider(
                                    color: Color(0xffd1d5db),
                                  ),
                                ],
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                  //input
                  UserInput(
                    chatcontroller: chatcontroller,
                  )
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
