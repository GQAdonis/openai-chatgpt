// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChatResponseAdapter extends TypeAdapter<ChatResponse> {
  @override
  final int typeId = 0;

  @override
  ChatResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChatResponse(
      id: fields[0] as String,
      object: fields[1] as String,
      created: fields[2] as int,
      model: fields[3] as String,
      choices: (fields[4] as List?)?.cast<GptChoice>(),
      usage: fields[5] as GptUsage?,
      createdAt: fields[6] as DateTime?,
      prompt: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ChatResponse obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.object)
      ..writeByte(2)
      ..write(obj.created)
      ..writeByte(3)
      ..write(obj.model)
      ..writeByte(4)
      ..write(obj.choices)
      ..writeByte(5)
      ..write(obj.usage)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
      ..write(obj.prompt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatResponse _$$_ChatResponseFromJson(Map<String, dynamic> json) =>
    _$_ChatResponse(
      id: json['id'] as String,
      object: json['object'] as String,
      created: json['created'] as int,
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => GptChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: json['usage'] == null
          ? null
          : GptUsage.fromJson(json['usage'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      prompt: json['prompt'] as String?,
    );

Map<String, dynamic> _$$_ChatResponseToJson(_$_ChatResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'choices': instance.choices,
      'usage': instance.usage,
      'createdAt': instance.createdAt?.toIso8601String(),
      'prompt': instance.prompt,
    };
