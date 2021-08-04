import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heroes/domain/entities/alignment.dart';
import 'package:heroes/domain/entities/gender.dart';
import 'package:heroes/domain/entities/hero_attributes.dart';

part 'hero.freezed.dart';

@freezed
class HeroEntity with _$HeroEntity {
  const HeroEntity._();

  const factory HeroEntity({
    required int id,
    required String name,
    required String photoUrl,
    required Gender gender,
    required HeroAlignment alignment,
    required HeroAttributes attributes,
  }) = _Hero;
}
