import 'package:freezed_annotation/freezed_annotation.dart';

part 'hero_attributes.freezed.dart';

@freezed
class HeroAttributes with _$HeroAttributes {
  const HeroAttributes._();

  const factory HeroAttributes({
    required int intelligence,
    required int strength,
    required int speed,
    required int durability,
    required int power,
    required int combat,
  }) = _HeroAttributes;
}
