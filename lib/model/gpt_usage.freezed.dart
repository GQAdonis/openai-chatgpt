// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gpt_usage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GptUsage _$GptUsageFromJson(Map<String, dynamic> json) {
  return _GptUsage.fromJson(json);
}

/// @nodoc
mixin _$GptUsage {
  @HiveField(0)
  int get promptTokens => throw _privateConstructorUsedError;
  @HiveField(1)
  int get releaseTokens => throw _privateConstructorUsedError;
  @HiveField(2)
  int get totalTokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GptUsageCopyWith<GptUsage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GptUsageCopyWith<$Res> {
  factory $GptUsageCopyWith(GptUsage value, $Res Function(GptUsage) then) =
      _$GptUsageCopyWithImpl<$Res, GptUsage>;
  @useResult
  $Res call(
      {@HiveField(0) int promptTokens,
      @HiveField(1) int releaseTokens,
      @HiveField(2) int totalTokens});
}

/// @nodoc
class _$GptUsageCopyWithImpl<$Res, $Val extends GptUsage>
    implements $GptUsageCopyWith<$Res> {
  _$GptUsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = null,
    Object? releaseTokens = null,
    Object? totalTokens = null,
  }) {
    return _then(_value.copyWith(
      promptTokens: null == promptTokens
          ? _value.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int,
      releaseTokens: null == releaseTokens
          ? _value.releaseTokens
          : releaseTokens // ignore: cast_nullable_to_non_nullable
              as int,
      totalTokens: null == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GptUsageCopyWith<$Res> implements $GptUsageCopyWith<$Res> {
  factory _$$_GptUsageCopyWith(
          _$_GptUsage value, $Res Function(_$_GptUsage) then) =
      __$$_GptUsageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int promptTokens,
      @HiveField(1) int releaseTokens,
      @HiveField(2) int totalTokens});
}

/// @nodoc
class __$$_GptUsageCopyWithImpl<$Res>
    extends _$GptUsageCopyWithImpl<$Res, _$_GptUsage>
    implements _$$_GptUsageCopyWith<$Res> {
  __$$_GptUsageCopyWithImpl(
      _$_GptUsage _value, $Res Function(_$_GptUsage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = null,
    Object? releaseTokens = null,
    Object? totalTokens = null,
  }) {
    return _then(_$_GptUsage(
      promptTokens: null == promptTokens
          ? _value.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int,
      releaseTokens: null == releaseTokens
          ? _value.releaseTokens
          : releaseTokens // ignore: cast_nullable_to_non_nullable
              as int,
      totalTokens: null == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GptUsage implements _GptUsage {
  const _$_GptUsage(
      {@HiveField(0) required this.promptTokens,
      @HiveField(1) required this.releaseTokens,
      @HiveField(2) required this.totalTokens});

  factory _$_GptUsage.fromJson(Map<String, dynamic> json) =>
      _$$_GptUsageFromJson(json);

  @override
  @HiveField(0)
  final int promptTokens;
  @override
  @HiveField(1)
  final int releaseTokens;
  @override
  @HiveField(2)
  final int totalTokens;

  @override
  String toString() {
    return 'GptUsage(promptTokens: $promptTokens, releaseTokens: $releaseTokens, totalTokens: $totalTokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GptUsage &&
            (identical(other.promptTokens, promptTokens) ||
                other.promptTokens == promptTokens) &&
            (identical(other.releaseTokens, releaseTokens) ||
                other.releaseTokens == releaseTokens) &&
            (identical(other.totalTokens, totalTokens) ||
                other.totalTokens == totalTokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, promptTokens, releaseTokens, totalTokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GptUsageCopyWith<_$_GptUsage> get copyWith =>
      __$$_GptUsageCopyWithImpl<_$_GptUsage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GptUsageToJson(
      this,
    );
  }
}

abstract class _GptUsage implements GptUsage {
  const factory _GptUsage(
      {@HiveField(0) required final int promptTokens,
      @HiveField(1) required final int releaseTokens,
      @HiveField(2) required final int totalTokens}) = _$_GptUsage;

  factory _GptUsage.fromJson(Map<String, dynamic> json) = _$_GptUsage.fromJson;

  @override
  @HiveField(0)
  int get promptTokens;
  @override
  @HiveField(1)
  int get releaseTokens;
  @override
  @HiveField(2)
  int get totalTokens;
  @override
  @JsonKey(ignore: true)
  _$$_GptUsageCopyWith<_$_GptUsage> get copyWith =>
      throw _privateConstructorUsedError;
}
