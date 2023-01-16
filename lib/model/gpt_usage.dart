
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'gpt_usage.freezed.dart';
part 'gpt_usage.g.dart';

/// GPT Usage
@freezed
@HiveType(typeId: 2)
class GptUsage with _$GptUsage {
  /// Constructor
  const factory GptUsage({
    @HiveField(0) required int promptTokens,
    @HiveField(1) required int releaseTokens,
    @HiveField(2) required int totalTokens,
}) = _GptUsage;

  /// JSON factory
  factory GptUsage.fromJson(Map<String, Object?> json)
  => _$GptUsageFromJson(json);
}