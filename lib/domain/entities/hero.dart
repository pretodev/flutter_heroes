import 'package:freezed_annotation/freezed_annotation.dart';

part 'hero.freezed.dart';

@freezed
class Hero with _$Hero {
  const Hero._();

  const factory Hero({
    required int id,
    required String name,
  }) = _Hero;
}
