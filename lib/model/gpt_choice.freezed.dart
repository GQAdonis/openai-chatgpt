// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gpt_choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GptChoice _$GptChoiceFromJson(Map<String, dynamic> json) {
  return _GptChoice.fromJson(json);
}

/// @nodoc
mixin _$GptChoice {
  @HiveField(0)
  String? get text => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get index => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get finishReason => throw _privateConstructorUsedError;
  @HiveField(3)
  List<LogProblems>? get logprobs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GptChoiceCopyWith<GptChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GptChoiceCopyWith<$Res> {
  factory $GptChoiceCopyWith(GptChoice value, $Res Function(GptChoice) then) =
      _$GptChoiceCopyWithImpl<$Res, GptChoice>;
  @useResult
  $Res call(
      {@HiveField(0) String? text,
      @HiveField(1) int? index,
      @HiveField(2) String? finishReason,
      @HiveField(3) List<LogProblems>? logprobs});
}

/// @nodoc
class _$GptChoiceCopyWithImpl<$Res, $Val extends GptChoice>
    implements $GptChoiceCopyWith<$Res> {
  _$GptChoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? index = freezed,
    Object? finishReason = freezed,
    Object? logprobs = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      logprobs: freezed == logprobs
          ? _value.logprobs
          : logprobs // ignore: cast_nullable_to_non_nullable
              as List<LogProblems>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GptChoiceCopyWith<$Res> implements $GptChoiceCopyWith<$Res> {
  factory _$$_GptChoiceCopyWith(
          _$_GptChoice value, $Res Function(_$_GptChoice) then) =
      __$$_GptChoiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? text,
      @HiveField(1) int? index,
      @HiveField(2) String? finishReason,
      @HiveField(3) List<LogProblems>? logprobs});
}

/// @nodoc
class __$$_GptChoiceCopyWithImpl<$Res>
    extends _$GptChoiceCopyWithImpl<$Res, _$_GptChoice>
    implements _$$_GptChoiceCopyWith<$Res> {
  __$$_GptChoiceCopyWithImpl(
      _$_GptChoice _value, $Res Function(_$_GptChoice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? index = freezed,
    Object? finishReason = freezed,
    Object? logprobs = freezed,
  }) {
    return _then(_$_GptChoice(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      logprobs: freezed == logprobs
          ? _value._logprobs
          : logprobs // ignore: cast_nullable_to_non_nullable
              as List<LogProblems>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GptChoice implements _GptChoice {
  const _$_GptChoice(
      {@HiveField(0) this.text,
      @HiveField(1) this.index,
      @HiveField(2) this.finishReason,
      @HiveField(3) final List<LogProblems>? logprobs})
      : _logprobs = logprobs;

  factory _$_GptChoice.fromJson(Map<String, dynamic> json) =>
      _$$_GptChoiceFromJson(json);

  @override
  @HiveField(0)
  final String? text;
  @override
  @HiveField(1)
  final int? index;
  @override
  @HiveField(2)
  final String? finishReason;
  final List<LogProblems>? _logprobs;
  @override
  @HiveField(3)
  List<LogProblems>? get logprobs {
    final value = _logprobs;
    if (value == null) return null;
    if (_logprobs is EqualUnmodifiableListView) return _logprobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GptChoice(text: $text, index: $index, finishReason: $finishReason, logprobs: $logprobs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GptChoice &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            const DeepCollectionEquality().equals(other._logprobs, _logprobs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, index, finishReason,
      const DeepCollectionEquality().hash(_logprobs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GptChoiceCopyWith<_$_GptChoice> get copyWith =>
      __$$_GptChoiceCopyWithImpl<_$_GptChoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GptChoiceToJson(
      this,
    );
  }
}

abstract class _GptChoice implements GptChoice {
  const factory _GptChoice(
      {@HiveField(0) final String? text,
      @HiveField(1) final int? index,
      @HiveField(2) final String? finishReason,
      @HiveField(3) final List<LogProblems>? logprobs}) = _$_GptChoice;

  factory _GptChoice.fromJson(Map<String, dynamic> json) =
      _$_GptChoice.fromJson;

  @override
  @HiveField(0)
  String? get text;
  @override
  @HiveField(1)
  int? get index;
  @override
  @HiveField(2)
  String? get finishReason;
  @override
  @HiveField(3)
  List<LogProblems>? get logprobs;
  @override
  @JsonKey(ignore: true)
  _$$_GptChoiceCopyWith<_$_GptChoice> get copyWith =>
      throw _privateConstructorUsedError;
}
