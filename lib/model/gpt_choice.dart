
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:openai_chat/model/log_problems.dart';

part 'gpt_choice.freezed.dart';
part 'gpt_choice.g.dart';

/// GPT Choice
@freezed
@HiveType(typeId: 1)
class GptChoice with _$GptChoice {
  /// Constructor
  const factory GptChoice({
    @HiveField(0) String? text,
    @HiveField(1) int? index,
    @HiveField(2) String? finishReason,
  @HiveField(3) List<LogProblems>? logprobs,
}) = _GptChoice;

  /// JSON factory
  factory GptChoice.fromJson(Map<String, Object?> json)
  => _$GptChoiceFromJson(json);
}