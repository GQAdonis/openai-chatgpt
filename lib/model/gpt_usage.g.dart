// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gpt_usage.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GptUsageAdapter extends TypeAdapter<GptUsage> {
  @override
  final int typeId = 2;

  @override
  GptUsage read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GptUsage(
      promptTokens: fields[0] as int,
      releaseTokens: fields[1] as int,
      totalTokens: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, GptUsage obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.promptTokens)
      ..writeByte(1)
      ..write(obj.releaseTokens)
      ..writeByte(2)
      ..write(obj.totalTokens);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GptUsageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GptUsage _$$_GptUsageFromJson(Map<String, dynamic> json) => _$_GptUsage(
      promptTokens: json['promptTokens'] as int,
      releaseTokens: json['releaseTokens'] as int,
      totalTokens: json['totalTokens'] as int,
    );

Map<String, dynamic> _$$_GptUsageToJson(_$_GptUsage instance) =>
    <String, dynamic>{
      'promptTokens': instance.promptTokens,
      'releaseTokens': instance.releaseTokens,
      'totalTokens': instance.totalTokens,
    };
