// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'hero.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HeroEntityTearOff {
  const _$HeroEntityTearOff();

  _Hero call(
      {required int id,
      required String name,
      required String photoUrl,
      required Gender gender,
      required HeroAlignment alignment,
      required HeroAttributes attributes}) {
    return _Hero(
      id: id,
      name: name,
      photoUrl: photoUrl,
      gender: gender,
      alignment: alignment,
      attributes: attributes,
    );
  }
}

/// @nodoc
const $HeroEntity = _$HeroEntityTearOff();

/// @nodoc
mixin _$HeroEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  HeroAlignment get alignment => throw _privateConstructorUsedError;
  HeroAttributes get attributes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HeroEntityCopyWith<HeroEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroEntityCopyWith<$Res> {
  factory $HeroEntityCopyWith(
          HeroEntity value, $Res Function(HeroEntity) then) =
      _$HeroEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String photoUrl,
      Gender gender,
      HeroAlignment alignment,
      HeroAttributes attributes});

  $GenderCopyWith<$Res> get gender;
  $HeroAlignmentCopyWith<$Res> get alignment;
  $HeroAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$HeroEntityCopyWithImpl<$Res> implements $HeroEntityCopyWith<$Res> {
  _$HeroEntityCopyWithImpl(this._value, this._then);

  final HeroEntity _value;
  // ignore: unused_field
  final $Res Function(HeroEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photoUrl = freezed,
    Object? gender = freezed,
    Object? alignment = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      alignment: alignment == freezed
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as HeroAlignment,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as HeroAttributes,
    ));
  }

  @override
  $GenderCopyWith<$Res> get gender {
    return $GenderCopyWith<$Res>(_value.gender, (value) {
      return _then(_value.copyWith(gender: value));
    });
  }

  @override
  $HeroAlignmentCopyWith<$Res> get alignment {
    return $HeroAlignmentCopyWith<$Res>(_value.alignment, (value) {
      return _then(_value.copyWith(alignment: value));
    });
  }

  @override
  $HeroAttributesCopyWith<$Res> get attributes {
    return $HeroAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value));
    });
  }
}

/// @nodoc
abstract class _$HeroCopyWith<$Res> implements $HeroEntityCopyWith<$Res> {
  factory _$HeroCopyWith(_Hero value, $Res Function(_Hero) then) =
      __$HeroCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String photoUrl,
      Gender gender,
      HeroAlignment alignment,
      HeroAttributes attributes});

  @override
  $GenderCopyWith<$Res> get gender;
  @override
  $HeroAlignmentCopyWith<$Res> get alignment;
  @override
  $HeroAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$HeroCopyWithImpl<$Res> extends _$HeroEntityCopyWithImpl<$Res>
    implements _$HeroCopyWith<$Res> {
  __$HeroCopyWithImpl(_Hero _value, $Res Function(_Hero) _then)
      : super(_value, (v) => _then(v as _Hero));

  @override
  _Hero get _value => super._value as _Hero;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photoUrl = freezed,
    Object? gender = freezed,
    Object? alignment = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_Hero(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      alignment: alignment == freezed
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as HeroAlignment,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as HeroAttributes,
    ));
  }
}

/// @nodoc

class _$_Hero extends _Hero {
  const _$_Hero(
      {required this.id,
      required this.name,
      required this.photoUrl,
      required this.gender,
      required this.alignment,
      required this.attributes})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final String photoUrl;
  @override
  final Gender gender;
  @override
  final HeroAlignment alignment;
  @override
  final HeroAttributes attributes;

  @override
  String toString() {
    return 'HeroEntity(id: $id, name: $name, photoUrl: $photoUrl, gender: $gender, alignment: $alignment, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Hero &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.alignment, alignment) ||
                const DeepCollectionEquality()
                    .equals(other.alignment, alignment)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(alignment) ^
      const DeepCollectionEquality().hash(attributes);

  @JsonKey(ignore: true)
  @override
  _$HeroCopyWith<_Hero> get copyWith =>
      __$HeroCopyWithImpl<_Hero>(this, _$identity);
}

abstract class _Hero extends HeroEntity {
  const factory _Hero(
      {required int id,
      required String name,
      required String photoUrl,
      required Gender gender,
      required HeroAlignment alignment,
      required HeroAttributes attributes}) = _$_Hero;
  const _Hero._() : super._();

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get photoUrl => throw _privateConstructorUsedError;
  @override
  Gender get gender => throw _privateConstructorUsedError;
  @override
  HeroAlignment get alignment => throw _privateConstructorUsedError;
  @override
  HeroAttributes get attributes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HeroCopyWith<_Hero> get copyWith => throw _privateConstructorUsedError;
}
