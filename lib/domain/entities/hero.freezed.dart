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
class _$HeroTearOff {
  const _$HeroTearOff();

  _Hero call({required int id, required String name}) {
    return _Hero(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $Hero = _$HeroTearOff();

/// @nodoc
mixin _$Hero {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HeroCopyWith<Hero> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroCopyWith<$Res> {
  factory $HeroCopyWith(Hero value, $Res Function(Hero) then) =
      _$HeroCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$HeroCopyWithImpl<$Res> implements $HeroCopyWith<$Res> {
  _$HeroCopyWithImpl(this._value, this._then);

  final Hero _value;
  // ignore: unused_field
  final $Res Function(Hero) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$HeroCopyWith<$Res> implements $HeroCopyWith<$Res> {
  factory _$HeroCopyWith(_Hero value, $Res Function(_Hero) then) =
      __$HeroCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$HeroCopyWithImpl<$Res> extends _$HeroCopyWithImpl<$Res>
    implements _$HeroCopyWith<$Res> {
  __$HeroCopyWithImpl(_Hero _value, $Res Function(_Hero) _then)
      : super(_value, (v) => _then(v as _Hero));

  @override
  _Hero get _value => super._value as _Hero;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc

class _$_Hero extends _Hero {
  const _$_Hero({required this.id, required this.name}) : super._();

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Hero(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Hero &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$HeroCopyWith<_Hero> get copyWith =>
      __$HeroCopyWithImpl<_Hero>(this, _$identity);
}

abstract class _Hero extends Hero {
  const factory _Hero({required int id, required String name}) = _$_Hero;
  const _Hero._() : super._();

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HeroCopyWith<_Hero> get copyWith => throw _privateConstructorUsedError;
}
