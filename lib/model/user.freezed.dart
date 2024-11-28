// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _user.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String get avartar => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String email,
      String first_name,
      String last_name,
      String avartar});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? avartar = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      avartar: null == avartar
          ? _value.avartar
          : avartar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$userImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$userImplCopyWith(
          _$userImpl value, $Res Function(_$userImpl) then) =
      __$$userImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String email,
      String first_name,
      String last_name,
      String avartar});
}

/// @nodoc
class __$$userImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$userImpl>
    implements _$$userImplCopyWith<$Res> {
  __$$userImplCopyWithImpl(_$userImpl _value, $Res Function(_$userImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? avartar = null,
  }) {
    return _then(_$userImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      avartar: null == avartar
          ? _value.avartar
          : avartar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$userImpl implements _user {
  const _$userImpl(
      {required this.id,
      required this.email,
      required this.first_name,
      required this.last_name,
      required this.avartar});

  factory _$userImpl.fromJson(Map<String, dynamic> json) =>
      _$$userImplFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String avartar;

  @override
  String toString() {
    return 'User(id: $id, email: $email, first_name: $first_name, last_name: $last_name, avartar: $avartar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.avartar, avartar) || other.avartar == avartar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, email, first_name, last_name, avartar);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$userImplCopyWith<_$userImpl> get copyWith =>
      __$$userImplCopyWithImpl<_$userImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$userImplToJson(
      this,
    );
  }
}

abstract class _user implements User {
  const factory _user(
      {required final int id,
      required final String email,
      required final String first_name,
      required final String last_name,
      required final String avartar}) = _$userImpl;

  factory _user.fromJson(Map<String, dynamic> json) = _$userImpl.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  String get avartar;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$userImplCopyWith<_$userImpl> get copyWith =>
      throw _privateConstructorUsedError;
}