import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heroes/domain/entities/gender.dart';

part 'hero.freezed.dart';

@freezed
class HeroEntity with _$HeroEntity {
  const HeroEntity._();

  const factory HeroEntity({
    required int id,
    required String name,
    required Gender gender,
  }) = _Hero;
}
