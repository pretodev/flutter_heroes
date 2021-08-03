import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:heroes/domain/entities/hero.dart';
import 'package:heroes/external/api_provider/api_provider.dart';
import 'package:heroes/external/hero_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockApiProvider extends Mock implements ApiProvider {}

void main() {
  final heroes = <Hero>[
    Hero(id: 1, name: 'hero1'),
    Hero(id: 2, name: 'hero2'),
    Hero(id: 3, name: 'hero3'),
    Hero(id: 4, name: 'hero4'),
    Hero(id: 5, name: 'hero5'),
  ];

  test('should return all heroes', () async {
    final apiProvider = MockApiProvider();
    final heroRepository = HeroRepository(apiProvider: apiProvider);

    when(() => apiProvider.all).thenAnswer((_) async => heroes);

    final result = await heroRepository.all().run();
    List<Hero> allHeroes = result.fold((_) => [], id);

    expect(allHeroes.length, 5);
  });
}
