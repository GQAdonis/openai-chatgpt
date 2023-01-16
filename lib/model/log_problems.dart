

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'log_problems.freezed.dart';
part 'log_problems.g.dart';

@freezed
@HiveType(typeId: 3)
/// Log problems
class LogProblems with _$LogProblems {
  /// Constructor
  const factory LogProblems({
    @HiveField(0) List<String>? tokens,

  @HiveField(1) List<num>? tokenLogprobs,

  @HiveField(2) List<Object>? topLogprobs,

  @HiveField(3) List<int>? textOffset,
}) = _LogProblems;

  /// JSON factory
  factory LogProblems.fromJson(Map<String, Object?> json)
  => _$LogProblemsFromJson(json);
}
