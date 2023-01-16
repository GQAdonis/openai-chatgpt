import 'package:fpdart/fpdart.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:openai_chat/api_constants.dart';
import 'package:openai_chat/model/chat_response.dart';
import 'package:openai_chat/model/gpt_choice.dart';
import 'package:openai_chat/model/log_problems.dart';
import 'package:openai_chat/utils/failure.dart';
import 'package:openai_client/openai_client.dart';

/// OpenAPI Repository
class OpenAiRepository {
  /// HTTP Client
  static http.Client client = http.Client();


  static late OpenAIClient? _instance;
  static OpenAIClient get _openApiInstance =>
    _instance ??= OpenAIClient(
        configuration: const OpenAIConfiguration(apiKey: aiToken),
    );

  static late Box<ChatResponse> _box;

  /// Sends OpenAPI request.
  static Future<Either<Failure, ChatResponse>>
    sendMessage({required String prompt})
    async {
    final client = OpenAIClient(
      configuration: const OpenAIConfiguration(apiKey: aiToken),
    );

    _box = await Hive.openBox('chatResponse');
      ChatResponse? chatResponse;
      final completion = await client.completions
          .create(
        model: 'text-davinci-003',
        prompt: prompt,
        temperature: 0,
        maxTokens: 2000,
      ).data;

      final choices = <GptChoice>[];

      for (final c in completion.choices) {
        final logprobs = <LogProblems>[];
        if (c.logprobs != null) {
          final propList = (c.logprobs as List)
              .map((e) => e as Map<String, Object?>);
          for (dynamic p in propList) {
            final m = p as Map<String, Object?>;
            final logprob = LogProblems(
              textOffset: m['textOffset'] as List<int>?,
              topLogprobs: m['topLogprobs'] as List<num>?,
              tokenLogprobs: m['tokenLogprobs'] as List<double>?,
              tokens: m['tokens'] as List<String>?
            );

            logprobs.add(logprob);
          }
        }
        final cc = GptChoice(
          text: c.text,
          index: c.index,
          finishReason: c.finishReason,
          logprobs: logprobs,
        );
        choices.add(cc);
      }

      chatResponse = ChatResponse(
          id: completion.id,
          object: completion.object,
          created: completion.created,
          model: completion.model,
          choices: choices,
          createdAt: DateTime.now(),
          prompt: prompt,
      );

      await _box.add(chatResponse);

      return right(chatResponse);
    /*try {
      final headers = {
        'Authorization': 'Bearer $aiToken',
        'Content-Type': 'application/json'
      };
      final request = http.Request('POST', Uri.parse('${endpoint}completions'))
      ..body = json.encode({
        'model': 'text-davinci-003',
        'prompt': prompt,
        'temperature': 0,
        'max_tokens': 2000
      });
      request.headers.addAll(headers);

      final response = await request.send();
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();

        return json.decode(data) as Map<String, dynamic>;
      } else {
        return {
          'status': false,
          'message': 'Oops, there was an error',
        };
      }
    } catch (_) {
      return {
        'status': false,
        'message': 'Oops, there was an error',
      };
    }*/
  }
}
