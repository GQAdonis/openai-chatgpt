// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatResponse _$ChatResponseFromJson(Map<String, dynamic> json) {
  return _ChatResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatResponse {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get object => throw _privateConstructorUsedError;
  @HiveField(2)
  int get created => throw _privateConstructorUsedError;
  @HiveField(3)
  String get model => throw _privateConstructorUsedError;
  @HiveField(4)
  List<GptChoice>? get choices => throw _privateConstructorUsedError;
  @HiveField(5)
  GptUsage? get usage => throw _privateConstructorUsedError;
  @HiveField(6)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get prompt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatResponseCopyWith<ChatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatResponseCopyWith<$Res> {
  factory $ChatResponseCopyWith(
          ChatResponse value, $Res Function(ChatResponse) then) =
      _$ChatResponseCopyWithImpl<$Res, ChatResponse>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String object,
      @HiveField(2) int created,
      @HiveField(3) String model,
      @HiveField(4) List<GptChoice>? choices,
      @HiveField(5) GptUsage? usage,
      @HiveField(6) DateTime? createdAt,
      @HiveField(7) String? prompt});

  $GptUsageCopyWith<$Res>? get usage;
}

/// @nodoc
class _$ChatResponseCopyWithImpl<$Res, $Val extends ChatResponse>
    implements $ChatResponseCopyWith<$Res> {
  _$ChatResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? model = null,
    Object? choices = freezed,
    Object? usage = freezed,
    Object? createdAt = freezed,
    Object? prompt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      choices: freezed == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<GptChoice>?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as GptUsage?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GptUsageCopyWith<$Res>? get usage {
    if (_value.usage == null) {
      return null;
    }

    return $GptUsageCopyWith<$Res>(_value.usage!, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatResponseCopyWith<$Res>
    implements $ChatResponseCopyWith<$Res> {
  factory _$$_ChatResponseCopyWith(
          _$_ChatResponse value, $Res Function(_$_ChatResponse) then) =
      __$$_ChatResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String object,
      @HiveField(2) int created,
      @HiveField(3) String model,
      @HiveField(4) List<GptChoice>? choices,
      @HiveField(5) GptUsage? usage,
      @HiveField(6) DateTime? createdAt,
      @HiveField(7) String? prompt});

  @override
  $GptUsageCopyWith<$Res>? get usage;
}

/// @nodoc
class __$$_ChatResponseCopyWithImpl<$Res>
    extends _$ChatResponseCopyWithImpl<$Res, _$_ChatResponse>
    implements _$$_ChatResponseCopyWith<$Res> {
  __$$_ChatResponseCopyWithImpl(
      _$_ChatResponse _value, $Res Function(_$_ChatResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? model = null,
    Object? choices = freezed,
    Object? usage = freezed,
    Object? createdAt = freezed,
    Object? prompt = freezed,
  }) {
    return _then(_$_ChatResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      choices: freezed == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<GptChoice>?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as GptUsage?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatResponse implements _ChatResponse {
  const _$_ChatResponse(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.object,
      @HiveField(2) required this.created,
      @HiveField(3) required this.model,
      @HiveField(4) required final List<GptChoice>? choices,
      @HiveField(5) this.usage,
      @HiveField(6) this.createdAt,
      @HiveField(7) this.prompt})
      : _choices = choices;

  factory _$_ChatResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChatResponseFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String object;
  @override
  @HiveField(2)
  final int created;
  @override
  @HiveField(3)
  final String model;
  final List<GptChoice>? _choices;
  @override
  @HiveField(4)
  List<GptChoice>? get choices {
    final value = _choices;
    if (value == null) return null;
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(5)
  final GptUsage? usage;
  @override
  @HiveField(6)
  final DateTime? createdAt;
  @override
  @HiveField(7)
  final String? prompt;

  @override
  String toString() {
    return 'ChatResponse(id: $id, object: $object, created: $created, model: $model, choices: $choices, usage: $usage, createdAt: $createdAt, prompt: $prompt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.prompt, prompt) || other.prompt == prompt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, created, model,
      const DeepCollectionEquality().hash(_choices), usage, createdAt, prompt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatResponseCopyWith<_$_ChatResponse> get copyWith =>
      __$$_ChatResponseCopyWithImpl<_$_ChatResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatResponseToJson(
      this,
    );
  }
}

abstract class _ChatResponse implements ChatResponse {
  const factory _ChatResponse(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String object,
      @HiveField(2) required final int created,
      @HiveField(3) required final String model,
      @HiveField(4) required final List<GptChoice>? choices,
      @HiveField(5) final GptUsage? usage,
      @HiveField(6) final DateTime? createdAt,
      @HiveField(7) final String? prompt}) = _$_ChatResponse;

  factory _ChatResponse.fromJson(Map<String, dynamic> json) =
      _$_ChatResponse.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get object;
  @override
  @HiveField(2)
  int get created;
  @override
  @HiveField(3)
  String get model;
  @override
  @HiveField(4)
  List<GptChoice>? get choices;
  @override
  @HiveField(5)
  GptUsage? get usage;
  @override
  @HiveField(6)
  DateTime? get createdAt;
  @override
  @HiveField(7)
  String? get prompt;
  @override
  @JsonKey(ignore: true)
  _$$_ChatResponseCopyWith<_$_ChatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
