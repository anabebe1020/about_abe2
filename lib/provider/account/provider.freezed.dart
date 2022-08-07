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
mixin _$AccountState {
  bool get isLoading => throw _privateConstructorUsedError;
  QiitaUserModel? get qiita => throw _privateConstructorUsedError;
  GitHubModel? get github => throw _privateConstructorUsedError;
  List<GitHubRepoModel>? get repos => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      QiitaUserModel? qiita,
      GitHubModel? github,
      List<GitHubRepoModel>? repos,
      String? errorMessage});
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res> implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  final AccountState _value;
  // ignore: unused_field
  final $Res Function(AccountState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? qiita = freezed,
    Object? github = freezed,
    Object? repos = freezed,
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
              as QiitaUserModel?,
      github: github == freezed
          ? _value.github
          : github // ignore: cast_nullable_to_non_nullable
              as GitHubModel?,
      repos: repos == freezed
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepoModel>?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AccountStateCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$_AccountStateCopyWith(
          _$_AccountState value, $Res Function(_$_AccountState) then) =
      __$$_AccountStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      QiitaUserModel? qiita,
      GitHubModel? github,
      List<GitHubRepoModel>? repos,
      String? errorMessage});
}

/// @nodoc
class __$$_AccountStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements _$$_AccountStateCopyWith<$Res> {
  __$$_AccountStateCopyWithImpl(
      _$_AccountState _value, $Res Function(_$_AccountState) _then)
      : super(_value, (v) => _then(v as _$_AccountState));

  @override
  _$_AccountState get _value => super._value as _$_AccountState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? qiita = freezed,
    Object? github = freezed,
    Object? repos = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_AccountState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      qiita: qiita == freezed
          ? _value.qiita
          : qiita // ignore: cast_nullable_to_non_nullable
              as QiitaUserModel?,
      github: github == freezed
          ? _value.github
          : github // ignore: cast_nullable_to_non_nullable
              as GitHubModel?,
      repos: repos == freezed
          ? _value._repos
          : repos // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepoModel>?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AccountState implements _AccountState {
  const _$_AccountState(
      {this.isLoading = false,
      this.qiita,
      this.github,
      final List<GitHubRepoModel>? repos,
      this.errorMessage})
      : _repos = repos;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final QiitaUserModel? qiita;
  @override
  final GitHubModel? github;
  final List<GitHubRepoModel>? _repos;
  @override
  List<GitHubRepoModel>? get repos {
    final value = _repos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AccountState(isLoading: $isLoading, qiita: $qiita, github: $github, repos: $repos, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.qiita, qiita) &&
            const DeepCollectionEquality().equals(other.github, github) &&
            const DeepCollectionEquality().equals(other._repos, _repos) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(qiita),
      const DeepCollectionEquality().hash(github),
      const DeepCollectionEquality().hash(_repos),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_AccountStateCopyWith<_$_AccountState> get copyWith =>
      __$$_AccountStateCopyWithImpl<_$_AccountState>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  const factory _AccountState(
      {final bool isLoading,
      final QiitaUserModel? qiita,
      final GitHubModel? github,
      final List<GitHubRepoModel>? repos,
      final String? errorMessage}) = _$_AccountState;

  @override
  bool get isLoading;
  @override
  QiitaUserModel? get qiita;
  @override
  GitHubModel? get github;
  @override
  List<GitHubRepoModel>? get repos;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_AccountStateCopyWith<_$_AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
