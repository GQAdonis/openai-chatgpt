import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:openai_chat/model/gpt_choice.dart';
import 'package:openai_chat/model/gpt_usage.dart';

part 'chat_response.g.dart';
part 'chat_response.freezed.dart';

/// Chat response that can be persisted
@freezed
@HiveType(typeId: 0)
class ChatResponse with _$ChatResponse {
  /// Constructor
  const factory ChatResponse({
    @HiveField(0) required String id,
    @HiveField(1) required String object,
    @HiveField(2) required int created,
    @HiveField(3) required String model,
    @HiveField(4) required List<GptChoice>? choices,
    @HiveField(5) GptUsage? usage,
    @HiveField(6) DateTime? createdAt,
    @HiveField(7) String? prompt,
  }) = _ChatResponse;

  /// JSON factory
  factory ChatResponse.fromJson(Map<String, Object?> json)
    => _$ChatResponseFromJson(json);
}
