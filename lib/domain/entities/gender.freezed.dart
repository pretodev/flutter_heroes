// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gender.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GenderTearOff {
  const _$GenderTearOff();

  Male male() {
    return const Male();
  }

  Female female() {
    return const Female();
  }

  NonBinary nonBinary() {
    return const NonBinary();
  }
}

/// @nodoc
const $Gender = _$GenderTearOff();

/// @nodoc
mixin _$Gender {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() male,
    required TResult Function() female,
    required TResult Function() nonBinary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? male,
    TResult Function()? female,
    TResult Function()? nonBinary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Male value) male,
    required TResult Function(Female value) female,
    required TResult Function(NonBinary value) nonBinary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Male value)? male,
    TResult Function(Female value)? female,
    TResult Function(NonBinary value)? nonBinary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderCopyWith<$Res> {
  factory $GenderCopyWith(Gender value, $Res Function(Gender) then) =
      _$GenderCopyWithImpl<$Res>;
}

/// @nodoc
class _$GenderCopyWithImpl<$Res> implements $GenderCopyWith<$Res> {
  _$GenderCopyWithImpl(this._value, this._then);

  final Gender _value;
  // ignore: unused_field
  final $Res Function(Gender) _then;
}

/// @nodoc
abstract class $MaleCopyWith<$Res> {
  factory $MaleCopyWith(Male value, $Res Function(Male) then) =
      _$MaleCopyWithImpl<$Res>;
}

/// @nodoc
class _$MaleCopyWithImpl<$Res> extends _$GenderCopyWithImpl<$Res>
    implements $MaleCopyWith<$Res> {
  _$MaleCopyWithImpl(Male _value, $Res Function(Male) _then)
      : super(_value, (v) => _then(v as Male));

  @override
  Male get _value => super._value as Male;
}

/// @nodoc

class _$Male extends Male {
  const _$Male() : super._();

  @override
  String toString() {
    return 'Gender.male()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Male);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() male,
    required TResult Function() female,
    required TResult Function() nonBinary,
  }) {
    return male();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? male,
    TResult Function()? female,
    TResult Function()? nonBinary,
    required TResult orElse(),
  }) {
    if (male != null) {
      return male();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Male value) male,
    required TResult Function(Female value) female,
    required TResult Function(NonBinary value) nonBinary,
  }) {
    return male(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Male value)? male,
    TResult Function(Female value)? female,
    TResult Function(NonBinary value)? nonBinary,
    required TResult orElse(),
  }) {
    if (male != null) {
      return male(this);
    }
    return orElse();
  }
}

abstract class Male extends Gender {
  const factory Male() = _$Male;
  const Male._() : super._();
}

/// @nodoc
abstract class $FemaleCopyWith<$Res> {
  factory $FemaleCopyWith(Female value, $Res Function(Female) then) =
      _$FemaleCopyWithImpl<$Res>;
}

/// @nodoc
class _$FemaleCopyWithImpl<$Res> extends _$GenderCopyWithImpl<$Res>
    implements $FemaleCopyWith<$Res> {
  _$FemaleCopyWithImpl(Female _value, $Res Function(Female) _then)
      : super(_value, (v) => _then(v as Female));

  @override
  Female get _value => super._value as Female;
}

/// @nodoc

class _$Female extends Female {
  const _$Female() : super._();

  @override
  String toString() {
    return 'Gender.female()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Female);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() male,
    required TResult Function() female,
    required TResult Function() nonBinary,
  }) {
    return female();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? male,
    TResult Function()? female,
    TResult Function()? nonBinary,
    required TResult orElse(),
  }) {
    if (female != null) {
      return female();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Male value) male,
    required TResult Function(Female value) female,
    required TResult Function(NonBinary value) nonBinary,
  }) {
    return female(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Male value)? male,
    TResult Function(Female value)? female,
    TResult Function(NonBinary value)? nonBinary,
    required TResult orElse(),
  }) {
    if (female != null) {
      return female(this);
    }
    return orElse();
  }
}

abstract class Female extends Gender {
  const factory Female() = _$Female;
  const Female._() : super._();
}

/// @nodoc
abstract class $NonBinaryCopyWith<$Res> {
  factory $NonBinaryCopyWith(NonBinary value, $Res Function(NonBinary) then) =
      _$NonBinaryCopyWithImpl<$Res>;
}

/// @nodoc
class _$NonBinaryCopyWithImpl<$Res> extends _$GenderCopyWithImpl<$Res>
    implements $NonBinaryCopyWith<$Res> {
  _$NonBinaryCopyWithImpl(NonBinary _value, $Res Function(NonBinary) _then)
      : super(_value, (v) => _then(v as NonBinary));

  @override
  NonBinary get _value => super._value as NonBinary;
}

/// @nodoc

class _$NonBinary extends NonBinary {
  const _$NonBinary() : super._();

  @override
  String toString() {
    return 'Gender.nonBinary()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NonBinary);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() male,
    required TResult Function() female,
    required TResult Function() nonBinary,
  }) {
    return nonBinary();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? male,
    TResult Function()? female,
    TResult Function()? nonBinary,
    required TResult orElse(),
  }) {
    if (nonBinary != null) {
      return nonBinary();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Male value) male,
    required TResult Function(Female value) female,
    required TResult Function(NonBinary value) nonBinary,
  }) {
    return nonBinary(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Male value)? male,
    TResult Function(Female value)? female,
    TResult Function(NonBinary value)? nonBinary,
    required TResult orElse(),
  }) {
    if (nonBinary != null) {
      return nonBinary(this);
    }
    return orElse();
  }
}

abstract class NonBinary extends Gender {
  const factory NonBinary() = _$NonBinary;
  const NonBinary._() : super._();
}
