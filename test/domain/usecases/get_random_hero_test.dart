import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:heroes/domain/adapters/repositories/hero_repository_interface.dart';
import 'package:heroes/domain/entities/alignment.dart';
import 'package:heroes/domain/entities/gender.dart';
import 'package:heroes/domain/entities/hero.dart';
import 'package:heroes/domain/usecases/get_random_hero.dart';
import 'package:mocktail/mocktail.dart';

class MockHeroRepository extends Mock implements HeroRepositoryInterface {}

void main() {
  group('GetRandomHero', () {
    final hero = HeroEntity(
      id: 2,
      name: 'Ronald',
      gender: Gender.male(),
      alignment: HeroAlignment.neutral(),
    );

    final heroRepository = MockHeroRepository();

    test('should return a random hero', () async {
      when(() => heroRepository.random()).thenReturn(TaskEither.right(hero));
      final getRandomHero = GetRandomHero(heroRepository: heroRepository);
      final result = await getRandomHero().run();
      expect(result.fold(id, id), isA<HeroEntity>());
    });
  });
}
