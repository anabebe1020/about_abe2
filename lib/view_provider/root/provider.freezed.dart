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
mixin _$RootState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isInitialized => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RootStateCopyWith<RootState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootStateCopyWith<$Res> {
  factory $RootStateCopyWith(RootState value, $Res Function(RootState) then) =
      _$RootStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isInitialized,
      int currentPage,
      String? errorMessage});
}

/// @nodoc
class _$RootStateCopyWithImpl<$Res> implements $RootStateCopyWith<$Res> {
  _$RootStateCopyWithImpl(this._value, this._then);

  final RootState _value;
  // ignore: unused_field
  final $Res Function(RootState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isInitialized = freezed,
    Object? currentPage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitialized: isInitialized == freezed
          ? _value.isInitialized
          : isInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RootStateCopyWith<$Res> implements $RootStateCopyWith<$Res> {
  factory _$$_RootStateCopyWith(
          _$_RootState value, $Res Function(_$_RootState) then) =
      __$$_RootStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isInitialized,
      int currentPage,
      String? errorMessage});
}

/// @nodoc
class __$$_RootStateCopyWithImpl<$Res> extends _$RootStateCopyWithImpl<$Res>
    implements _$$_RootStateCopyWith<$Res> {
  __$$_RootStateCopyWithImpl(
      _$_RootState _value, $Res Function(_$_RootState) _then)
      : super(_value, (v) => _then(v as _$_RootState));

  @override
  _$_RootState get _value => super._value as _$_RootState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isInitialized = freezed,
    Object? currentPage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_RootState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitialized: isInitialized == freezed
          ? _value.isInitialized
          : isInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RootState implements _RootState {
  const _$_RootState(
      {this.isLoading = false,
      this.isInitialized = false,
      this.currentPage = 0,
      this.errorMessage});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isInitialized;
  @override
  @JsonKey()
  final int currentPage;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RootState(isLoading: $isLoading, isInitialized: $isInitialized, currentPage: $currentPage, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RootState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isInitialized, isInitialized) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isInitialized),
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_RootStateCopyWith<_$_RootState> get copyWith =>
      __$$_RootStateCopyWithImpl<_$_RootState>(this, _$identity);
}

abstract class _RootState implements RootState {
  const factory _RootState(
      {final bool isLoading,
      final bool isInitialized,
      final int currentPage,
      final String? errorMessage}) = _$_RootState;

  @override
  bool get isLoading;
  @override
  bool get isInitialized;
  @override
  int get currentPage;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_RootStateCopyWith<_$_RootState> get copyWith =>
      throw _privateConstructorUsedError;
}
