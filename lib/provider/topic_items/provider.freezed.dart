// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopicItemState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<TopicModel>? get qiita => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopicItemStateCopyWith<TopicItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicItemStateCopyWith<$Res> {
  factory $TopicItemStateCopyWith(
          TopicItemState value, $Res Function(TopicItemState) then) =
      _$TopicItemStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<TopicModel>? qiita, String? errorMessage});
}

/// @nodoc
class _$TopicItemStateCopyWithImpl<$Res>
    implements $TopicItemStateCopyWith<$Res> {
  _$TopicItemStateCopyWithImpl(this._value, this._then);

  final TopicItemState _value;
  // ignore: unused_field
  final $Res Function(TopicItemState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? qiita = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      qiita: qiita == freezed
          ? _value.qiita
          : qiita // ignore: cast_nullable_to_non_nullable
              as List<TopicModel>?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TopicItemStateCopyWith<$Res>
    implements $TopicItemStateCopyWith<$Res> {
  factory _$$_TopicItemStateCopyWith(
          _$_TopicItemState value, $Res Function(_$_TopicItemState) then) =
      __$$_TopicItemStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<TopicModel>? qiita, String? errorMessage});
}

/// @nodoc
class __$$_TopicItemStateCopyWithImpl<$Res>
    extends _$TopicItemStateCopyWithImpl<$Res>
    implements _$$_TopicItemStateCopyWith<$Res> {
  __$$_TopicItemStateCopyWithImpl(
      _$_TopicItemState _value, $Res Function(_$_TopicItemState) _then)
      : super(_value, (v) => _then(v as _$_TopicItemState));

  @override
  _$_TopicItemState get _value => super._value as _$_TopicItemState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? qiita = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_TopicItemState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      qiita: qiita == freezed
          ? _value._qiita
          : qiita // ignore: cast_nullable_to_non_nullable
              as List<TopicModel>?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TopicItemState implements _TopicItemState {
  const _$_TopicItemState(
      {this.isLoading = false,
      final List<TopicModel>? qiita,
      this.errorMessage})
      : _qiita = qiita;

  @override
  @JsonKey()
  final bool isLoading;
  final List<TopicModel>? _qiita;
  @override
  List<TopicModel>? get qiita {
    final value = _qiita;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TopicItemState(isLoading: $isLoading, qiita: $qiita, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopicItemState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other._qiita, _qiita) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_qiita),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_TopicItemStateCopyWith<_$_TopicItemState> get copyWith =>
      __$$_TopicItemStateCopyWithImpl<_$_TopicItemState>(this, _$identity);
}

abstract class _TopicItemState implements TopicItemState {
  const factory _TopicItemState(
      {final bool isLoading,
      final List<TopicModel>? qiita,
      final String? errorMessage}) = _$_TopicItemState;

  @override
  bool get isLoading;
  @override
  List<TopicModel>? get qiita;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_TopicItemStateCopyWith<_$_TopicItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
