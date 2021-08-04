// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'alignment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HeroAlignmentTearOff {
  const _$HeroAlignmentTearOff();

  Good good() {
    return const Good();
  }

  Bad bad() {
    return const Bad();
  }

  Neutral neutral() {
    return const Neutral();
  }
}

/// @nodoc
const $HeroAlignment = _$HeroAlignmentTearOff();

/// @nodoc
mixin _$HeroAlignment {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() good,
    required TResult Function() bad,
    required TResult Function() neutral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? good,
    TResult Function()? bad,
    TResult Function()? neutral,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Good value) good,
    required TResult Function(Bad value) bad,
    required TResult Function(Neutral value) neutral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Good value)? good,
    TResult Function(Bad value)? bad,
    TResult Function(Neutral value)? neutral,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroAlignmentCopyWith<$Res> {
  factory $HeroAlignmentCopyWith(
          HeroAlignment value, $Res Function(HeroAlignment) then) =
      _$HeroAlignmentCopyWithImpl<$Res>;
}

/// @nodoc
class _$HeroAlignmentCopyWithImpl<$Res>
    implements $HeroAlignmentCopyWith<$Res> {
  _$HeroAlignmentCopyWithImpl(this._value, this._then);

  final HeroAlignment _value;
  // ignore: unused_field
  final $Res Function(HeroAlignment) _then;
}

/// @nodoc
abstract class $GoodCopyWith<$Res> {
  factory $GoodCopyWith(Good value, $Res Function(Good) then) =
      _$GoodCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoodCopyWithImpl<$Res> extends _$HeroAlignmentCopyWithImpl<$Res>
    implements $GoodCopyWith<$Res> {
  _$GoodCopyWithImpl(Good _value, $Res Function(Good) _then)
      : super(_value, (v) => _then(v as Good));

  @override
  Good get _value => super._value as Good;
}

/// @nodoc

class _$Good extends Good {
  const _$Good() : super._();

  @override
  String toString() {
    return 'HeroAlignment.good()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Good);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() good,
    required TResult Function() bad,
    required TResult Function() neutral,
  }) {
    return good();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? good,
    TResult Function()? bad,
    TResult Function()? neutral,
    required TResult orElse(),
  }) {
    if (good != null) {
      return good();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Good value) good,
    required TResult Function(Bad value) bad,
    required TResult Function(Neutral value) neutral,
  }) {
    return good(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Good value)? good,
    TResult Function(Bad value)? bad,
    TResult Function(Neutral value)? neutral,
    required TResult orElse(),
  }) {
    if (good != null) {
      return good(this);
    }
    return orElse();
  }
}

abstract class Good extends HeroAlignment {
  const factory Good() = _$Good;
  const Good._() : super._();
}

/// @nodoc
abstract class $BadCopyWith<$Res> {
  factory $BadCopyWith(Bad value, $Res Function(Bad) then) =
      _$BadCopyWithImpl<$Res>;
}

/// @nodoc
class _$BadCopyWithImpl<$Res> extends _$HeroAlignmentCopyWithImpl<$Res>
    implements $BadCopyWith<$Res> {
  _$BadCopyWithImpl(Bad _value, $Res Function(Bad) _then)
      : super(_value, (v) => _then(v as Bad));

  @override
  Bad get _value => super._value as Bad;
}

/// @nodoc

class _$Bad extends Bad {
  const _$Bad() : super._();

  @override
  String toString() {
    return 'HeroAlignment.bad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Bad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() good,
    required TResult Function() bad,
    required TResult Function() neutral,
  }) {
    return bad();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? good,
    TResult Function()? bad,
    TResult Function()? neutral,
    required TResult orElse(),
  }) {
    if (bad != null) {
      return bad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Good value) good,
    required TResult Function(Bad value) bad,
    required TResult Function(Neutral value) neutral,
  }) {
    return bad(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Good value)? good,
    TResult Function(Bad value)? bad,
    TResult Function(Neutral value)? neutral,
    required TResult orElse(),
  }) {
    if (bad != null) {
      return bad(this);
    }
    return orElse();
  }
}

abstract class Bad extends HeroAlignment {
  const factory Bad() = _$Bad;
  const Bad._() : super._();
}

/// @nodoc
abstract class $NeutralCopyWith<$Res> {
  factory $NeutralCopyWith(Neutral value, $Res Function(Neutral) then) =
      _$NeutralCopyWithImpl<$Res>;
}

/// @nodoc
class _$NeutralCopyWithImpl<$Res> extends _$HeroAlignmentCopyWithImpl<$Res>
    implements $NeutralCopyWith<$Res> {
  _$NeutralCopyWithImpl(Neutral _value, $Res Function(Neutral) _then)
      : super(_value, (v) => _then(v as Neutral));

  @override
  Neutral get _value => super._value as Neutral;
}

/// @nodoc

class _$Neutral extends Neutral {
  const _$Neutral() : super._();

  @override
  String toString() {
    return 'HeroAlignment.neutral()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Neutral);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() good,
    required TResult Function() bad,
    required TResult Function() neutral,
  }) {
    return neutral();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? good,
    TResult Function()? bad,
    TResult Function()? neutral,
    required TResult orElse(),
  }) {
    if (neutral != null) {
      return neutral();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Good value) good,
    required TResult Function(Bad value) bad,
    required TResult Function(Neutral value) neutral,
  }) {
    return neutral(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Good value)? good,
    TResult Function(Bad value)? bad,
    TResult Function(Neutral value)? neutral,
    required TResult orElse(),
  }) {
    if (neutral != null) {
      return neutral(this);
    }
    return orElse();
  }
}

abstract class Neutral extends HeroAlignment {
  const factory Neutral() = _$Neutral;
  const Neutral._() : super._();
}
