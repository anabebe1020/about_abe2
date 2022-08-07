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
mixin _$QiitaState {
  bool get isLoading => throw _privateConstructorUsedError;
  QiitaUserModel? get user => throw _privateConstructorUsedError;
  List<TopicModel>? get items => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QiitaStateCopyWith<QiitaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QiitaStateCopyWith<$Res> {
  factory $QiitaStateCopyWith(
          QiitaState value, $Res Function(QiitaState) then) =
      _$QiitaStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      QiitaUserModel? user,
      List<TopicModel>? items,
      String? errorMessage});
}

/// @nodoc
class _$QiitaStateCopyWithImpl<$Res> implements $QiitaStateCopyWith<$Res> {
  _$QiitaStateCopyWithImpl(this._value, this._then);

  final QiitaState _value;
  // ignore: unused_field
  final $Res Function(QiitaState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? user = freezed,
    Object? items = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as QiitaUserModel?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TopicModel>?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_QiitaStateCopyWith<$Res>
    implements $QiitaStateCopyWith<$Res> {
  factory _$$_QiitaStateCopyWith(
          _$_QiitaState value, $Res Function(_$_QiitaState) then) =
      __$$_QiitaStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      QiitaUserModel? user,
      List<TopicModel>? items,
      String? errorMessage});
}

/// @nodoc
class __$$_QiitaStateCopyWithImpl<$Res> extends _$QiitaStateCopyWithImpl<$Res>
    implements _$$_QiitaStateCopyWith<$Res> {
  __$$_QiitaStateCopyWithImpl(
      _$_QiitaState _value, $Res Function(_$_QiitaState) _then)
      : super(_value, (v) => _then(v as _$_QiitaState));

  @override
  _$_QiitaState get _value => super._value as _$_QiitaState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? user = freezed,
    Object? items = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_QiitaState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as QiitaUserModel?,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TopicModel>?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_QiitaState implements _QiitaState {
  const _$_QiitaState(
      {this.isLoading = false,
      this.user,
      final List<TopicModel>? items,
      this.errorMessage})
      : _items = items;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final QiitaUserModel? user;
  final List<TopicModel>? _items;
  @override
  List<TopicModel>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'QiitaState(isLoading: $isLoading, user: $user, items: $items, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QiitaState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_QiitaStateCopyWith<_$_QiitaState> get copyWith =>
      __$$_QiitaStateCopyWithImpl<_$_QiitaState>(this, _$identity);
}

abstract class _QiitaState implements QiitaState {
  const factory _QiitaState(
      {final bool isLoading,
      final QiitaUserModel? user,
      final List<TopicModel>? items,
      final String? errorMessage}) = _$_QiitaState;

  @override
  bool get isLoading;
  @override
  QiitaUserModel? get user;
  @override
  List<TopicModel>? get items;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_QiitaStateCopyWith<_$_QiitaState> get copyWith =>
      throw _privateConstructorUsedError;
}
