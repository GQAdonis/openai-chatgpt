// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_problems.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LogProblemsAdapter extends TypeAdapter<LogProblems> {
  @override
  final int typeId = 3;

  @override
  LogProblems read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LogProblems(
      tokens: (fields[0] as List?)?.cast<String>(),
      tokenLogprobs: (fields[1] as List?)?.cast<num>(),
      topLogprobs: (fields[2] as List?)?.cast<Object>(),
      textOffset: (fields[3] as List?)?.cast<int>(),
    );
  }

  @override
  void write(BinaryWriter writer, LogProblems obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.tokens)
      ..writeByte(1)
      ..write(obj.tokenLogprobs)
      ..writeByte(2)
      ..write(obj.topLogprobs)
      ..writeByte(3)
      ..write(obj.textOffset);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LogProblemsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogProblems _$$_LogProblemsFromJson(Map<String, dynamic> json) =>
    _$_LogProblems(
      tokens:
          (json['tokens'] as List<dynamic>?)?.map((e) => e as String).toList(),
      tokenLogprobs: (json['tokenLogprobs'] as List<dynamic>?)
          ?.map((e) => e as num)
          .toList(),
      topLogprobs: (json['topLogprobs'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList(),
      textOffset:
          (json['textOffset'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_LogProblemsToJson(_$_LogProblems instance) =>
    <String, dynamic>{
      'tokens': instance.tokens,
      'tokenLogprobs': instance.tokenLogprobs,
      'topLogprobs': instance.topLogprobs,
      'textOffset': instance.textOffset,
    };
