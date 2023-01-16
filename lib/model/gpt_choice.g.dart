// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gpt_choice.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GptChoiceAdapter extends TypeAdapter<GptChoice> {
  @override
  final int typeId = 1;

  @override
  GptChoice read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GptChoice(
      text: fields[0] as String?,
      index: fields[1] as int?,
      finishReason: fields[2] as String?,
      logprobs: (fields[3] as List?)?.cast<LogProblems>(),
    );
  }

  @override
  void write(BinaryWriter writer, GptChoice obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.index)
      ..writeByte(2)
      ..write(obj.finishReason)
      ..writeByte(3)
      ..write(obj.logprobs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GptChoiceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GptChoice _$$_GptChoiceFromJson(Map<String, dynamic> json) => _$_GptChoice(
      text: json['text'] as String?,
      index: json['index'] as int?,
      finishReason: json['finishReason'] as String?,
      logprobs: (json['logprobs'] as List<dynamic>?)
          ?.map((e) => LogProblems.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GptChoiceToJson(_$_GptChoice instance) =>
    <String, dynamic>{
      'text': instance.text,
      'index': instance.index,
      'finishReason': instance.finishReason,
      'logprobs': instance.logprobs,
    };
