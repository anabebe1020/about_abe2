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
mixin _$GithubState {
  bool get isLoading => throw _privateConstructorUsedError;
  GitHubModel? get user => throw _privateConstructorUsedError;
  List<GitHubRepoModel>? get repos => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubStateCopyWith<GithubState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubStateCopyWith<$Res> {
  factory $GithubStateCopyWith(
          GithubState value, $Res Function(GithubState) then) =
      _$GithubStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      GitHubModel? user,
      List<GitHubRepoModel>? repos,
      String? errorMessage});
}

/// @nodoc
class _$GithubStateCopyWithImpl<$Res> implements $GithubStateCopyWith<$Res> {
  _$GithubStateCopyWithImpl(this._value, this._then);

  final GithubState _value;
  // ignore: unused_field
  final $Res Function(GithubState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? user = freezed,
    Object? repos = freezed,
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
abstract class _$$_GithubStateCopyWith<$Res>
    implements $GithubStateCopyWith<$Res> {
  factory _$$_GithubStateCopyWith(
          _$_GithubState value, $Res Function(_$_GithubState) then) =
      __$$_GithubStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      GitHubModel? user,
      List<GitHubRepoModel>? repos,
      String? errorMessage});
}

/// @nodoc
class __$$_GithubStateCopyWithImpl<$Res> extends _$GithubStateCopyWithImpl<$Res>
    implements _$$_GithubStateCopyWith<$Res> {
  __$$_GithubStateCopyWithImpl(
      _$_GithubState _value, $Res Function(_$_GithubState) _then)
      : super(_value, (v) => _then(v as _$_GithubState));

  @override
  _$_GithubState get _value => super._value as _$_GithubState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? user = freezed,
    Object? repos = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_GithubState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
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

class _$_GithubState implements _GithubState {
  const _$_GithubState(
      {this.isLoading = false,
      this.user,
      final List<GitHubRepoModel>? repos,
      this.errorMessage})
      : _repos = repos;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final GitHubModel? user;
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
    return 'GithubState(isLoading: $isLoading, user: $user, repos: $repos, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other._repos, _repos) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(_repos),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_GithubStateCopyWith<_$_GithubState> get copyWith =>
      __$$_GithubStateCopyWithImpl<_$_GithubState>(this, _$identity);
}

abstract class _GithubState implements GithubState {
  const factory _GithubState(
      {final bool isLoading,
      final GitHubModel? user,
      final List<GitHubRepoModel>? repos,
      final String? errorMessage}) = _$_GithubState;

  @override
  bool get isLoading;
  @override
  GitHubModel? get user;
  @override
  List<GitHubRepoModel>? get repos;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_GithubStateCopyWith<_$_GithubState> get copyWith =>
      throw _privateConstructorUsedError;
}
