import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:heroes/domain/entities/hero.dart';
import 'package:heroes/external/api_provider/api_provider.dart';
import 'package:heroes/external/hero_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockApiProvider extends Mock implements ApiProvider {}

void main() {
  group('Hero Repository', () {
    final heroes = <HeroEntity>[
      HeroEntity(id: 1, name: 'hero1'),
      HeroEntity(id: 2, name: 'hero2'),
      HeroEntity(id: 3, name: 'hero3'),
      HeroEntity(id: 4, name: 'hero4'),
      HeroEntity(id: 5, name: 'hero5'),
    ];

    test('should return all heroes', () async {
      final apiProvider = MockApiProvider();
      final heroRepository = HeroRepository(apiProvider: apiProvider);

      when(() => apiProvider.all).thenAnswer((_) async => heroes);

      final result = await heroRepository.all().run();
      List<HeroEntity> allHeroes = result.fold((_) => [], id);

      expect(allHeroes.length, 5);
    });
  });
}
