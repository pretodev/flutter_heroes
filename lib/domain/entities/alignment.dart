import 'package:freezed_annotation/freezed_annotation.dart';

part 'alignment.freezed.dart';

@freezed
class HeroAlignment with _$HeroAlignment {
  const HeroAlignment._();

  const factory HeroAlignment.good() = Good;
  const factory HeroAlignment.bad() = Bad;
  const factory HeroAlignment.neutral() = Neutral;
}
