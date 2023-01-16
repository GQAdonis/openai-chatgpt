// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_problems.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogProblems _$LogProblemsFromJson(Map<String, dynamic> json) {
  return _LogProblems.fromJson(json);
}

/// @nodoc
mixin _$LogProblems {
  @HiveField(0)
  List<String>? get tokens => throw _privateConstructorUsedError;
  @HiveField(1)
  List<num>? get tokenLogprobs => throw _privateConstructorUsedError;
  @HiveField(2)
  List<Object>? get topLogprobs => throw _privateConstructorUsedError;
  @HiveField(3)
  List<int>? get textOffset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogProblemsCopyWith<LogProblems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogProblemsCopyWith<$Res> {
  factory $LogProblemsCopyWith(
          LogProblems value, $Res Function(LogProblems) then) =
      _$LogProblemsCopyWithImpl<$Res, LogProblems>;
  @useResult
  $Res call(
      {@HiveField(0) List<String>? tokens,
      @HiveField(1) List<num>? tokenLogprobs,
      @HiveField(2) List<Object>? topLogprobs,
      @HiveField(3) List<int>? textOffset});
}

/// @nodoc
class _$LogProblemsCopyWithImpl<$Res, $Val extends LogProblems>
    implements $LogProblemsCopyWith<$Res> {
  _$LogProblemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = freezed,
    Object? tokenLogprobs = freezed,
    Object? topLogprobs = freezed,
    Object? textOffset = freezed,
  }) {
    return _then(_value.copyWith(
      tokens: freezed == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tokenLogprobs: freezed == tokenLogprobs
          ? _value.tokenLogprobs
          : tokenLogprobs // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      topLogprobs: freezed == topLogprobs
          ? _value.topLogprobs
          : topLogprobs // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
      textOffset: freezed == textOffset
          ? _value.textOffset
          : textOffset // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogProblemsCopyWith<$Res>
    implements $LogProblemsCopyWith<$Res> {
  factory _$$_LogProblemsCopyWith(
          _$_LogProblems value, $Res Function(_$_LogProblems) then) =
      __$$_LogProblemsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) List<String>? tokens,
      @HiveField(1) List<num>? tokenLogprobs,
      @HiveField(2) List<Object>? topLogprobs,
      @HiveField(3) List<int>? textOffset});
}

/// @nodoc
class __$$_LogProblemsCopyWithImpl<$Res>
    extends _$LogProblemsCopyWithImpl<$Res, _$_LogProblems>
    implements _$$_LogProblemsCopyWith<$Res> {
  __$$_LogProblemsCopyWithImpl(
      _$_LogProblems _value, $Res Function(_$_LogProblems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = freezed,
    Object? tokenLogprobs = freezed,
    Object? topLogprobs = freezed,
    Object? textOffset = freezed,
  }) {
    return _then(_$_LogProblems(
      tokens: freezed == tokens
          ? _value._tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tokenLogprobs: freezed == tokenLogprobs
          ? _value._tokenLogprobs
          : tokenLogprobs // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      topLogprobs: freezed == topLogprobs
          ? _value._topLogprobs
          : topLogprobs // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
      textOffset: freezed == textOffset
          ? _value._textOffset
          : textOffset // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogProblems implements _LogProblems {
  const _$_LogProblems(
      {@HiveField(0) final List<String>? tokens,
      @HiveField(1) final List<num>? tokenLogprobs,
      @HiveField(2) final List<Object>? topLogprobs,
      @HiveField(3) final List<int>? textOffset})
      : _tokens = tokens,
        _tokenLogprobs = tokenLogprobs,
        _topLogprobs = topLogprobs,
        _textOffset = textOffset;

  factory _$_LogProblems.fromJson(Map<String, dynamic> json) =>
      _$$_LogProblemsFromJson(json);

  final List<String>? _tokens;
  @override
  @HiveField(0)
  List<String>? get tokens {
    final value = _tokens;
    if (value == null) return null;
    if (_tokens is EqualUnmodifiableListView) return _tokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<num>? _tokenLogprobs;
  @override
  @HiveField(1)
  List<num>? get tokenLogprobs {
    final value = _tokenLogprobs;
    if (value == null) return null;
    if (_tokenLogprobs is EqualUnmodifiableListView) return _tokenLogprobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Object>? _topLogprobs;
  @override
  @HiveField(2)
  List<Object>? get topLogprobs {
    final value = _topLogprobs;
    if (value == null) return null;
    if (_topLogprobs is EqualUnmodifiableListView) return _topLogprobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _textOffset;
  @override
  @HiveField(3)
  List<int>? get textOffset {
    final value = _textOffset;
    if (value == null) return null;
    if (_textOffset is EqualUnmodifiableListView) return _textOffset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LogProblems(tokens: $tokens, tokenLogprobs: $tokenLogprobs, topLogprobs: $topLogprobs, textOffset: $textOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogProblems &&
            const DeepCollectionEquality().equals(other._tokens, _tokens) &&
            const DeepCollectionEquality()
                .equals(other._tokenLogprobs, _tokenLogprobs) &&
            const DeepCollectionEquality()
                .equals(other._topLogprobs, _topLogprobs) &&
            const DeepCollectionEquality()
                .equals(other._textOffset, _textOffset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tokens),
      const DeepCollectionEquality().hash(_tokenLogprobs),
      const DeepCollectionEquality().hash(_topLogprobs),
      const DeepCollectionEquality().hash(_textOffset));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogProblemsCopyWith<_$_LogProblems> get copyWith =>
      __$$_LogProblemsCopyWithImpl<_$_LogProblems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogProblemsToJson(
      this,
    );
  }
}

abstract class _LogProblems implements LogProblems {
  const factory _LogProblems(
      {@HiveField(0) final List<String>? tokens,
      @HiveField(1) final List<num>? tokenLogprobs,
      @HiveField(2) final List<Object>? topLogprobs,
      @HiveField(3) final List<int>? textOffset}) = _$_LogProblems;

  factory _LogProblems.fromJson(Map<String, dynamic> json) =
      _$_LogProblems.fromJson;

  @override
  @HiveField(0)
  List<String>? get tokens;
  @override
  @HiveField(1)
  List<num>? get tokenLogprobs;
  @override
  @HiveField(2)
  List<Object>? get topLogprobs;
  @override
  @HiveField(3)
  List<int>? get textOffset;
  @override
  @JsonKey(ignore: true)
  _$$_LogProblemsCopyWith<_$_LogProblems> get copyWith =>
      throw _privateConstructorUsedError;
}
