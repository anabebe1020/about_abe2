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
mixin _$DiscographyState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<DiscographyModel>? get discography => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscographyStateCopyWith<DiscographyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscographyStateCopyWith<$Res> {
  factory $DiscographyStateCopyWith(
          DiscographyState value, $Res Function(DiscographyState) then) =
      _$DiscographyStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<DiscographyModel>? discography,
      String? errorMessage});
}

/// @nodoc
class _$DiscographyStateCopyWithImpl<$Res>
    implements $DiscographyStateCopyWith<$Res> {
  _$DiscographyStateCopyWithImpl(this._value, this._then);

  final DiscographyState _value;
  // ignore: unused_field
  final $Res Function(DiscographyState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? discography = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      discography: discography == freezed
          ? _value.discography
          : discography // ignore: cast_nullable_to_non_nullable
              as List<DiscographyModel>?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DiscographyStateCopyWith<$Res>
    implements $DiscographyStateCopyWith<$Res> {
  factory _$$_DiscographyStateCopyWith(
          _$_DiscographyState value, $Res Function(_$_DiscographyState) then) =
      __$$_DiscographyStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<DiscographyModel>? discography,
      String? errorMessage});
}

/// @nodoc
class __$$_DiscographyStateCopyWithImpl<$Res>
    extends _$DiscographyStateCopyWithImpl<$Res>
    implements _$$_DiscographyStateCopyWith<$Res> {
  __$$_DiscographyStateCopyWithImpl(
      _$_DiscographyState _value, $Res Function(_$_DiscographyState) _then)
      : super(_value, (v) => _then(v as _$_DiscographyState));

  @override
  _$_DiscographyState get _value => super._value as _$_DiscographyState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? discography = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_DiscographyState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      discography: discography == freezed
          ? _value._discography
          : discography // ignore: cast_nullable_to_non_nullable
              as List<DiscographyModel>?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DiscographyState implements _DiscographyState {
  const _$_DiscographyState(
      {this.isLoading = false,
      final List<DiscographyModel>? discography,
      this.errorMessage})
      : _discography = discography;

  @override
  @JsonKey()
  final bool isLoading;
  final List<DiscographyModel>? _discography;
  @override
  List<DiscographyModel>? get discography {
    final value = _discography;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DiscographyState(isLoading: $isLoading, discography: $discography, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscographyState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._discography, _discography) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_discography),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_DiscographyStateCopyWith<_$_DiscographyState> get copyWith =>
      __$$_DiscographyStateCopyWithImpl<_$_DiscographyState>(this, _$identity);
}

abstract class _DiscographyState implements DiscographyState {
  const factory _DiscographyState(
      {final bool isLoading,
      final List<DiscographyModel>? discography,
      final String? errorMessage}) = _$_DiscographyState;

  @override
  bool get isLoading;
  @override
  List<DiscographyModel>? get discography;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_DiscographyStateCopyWith<_$_DiscographyState> get copyWith =>
      throw _privateConstructorUsedError;
}
