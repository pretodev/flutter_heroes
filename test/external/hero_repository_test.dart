import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:heroes/domain/entities/alignment.dart';
import 'package:heroes/domain/entities/gender.dart';
import 'package:heroes/domain/entities/hero.dart';
import 'package:heroes/domain/usecases/get_heroes.dart';
import 'package:heroes/external/api_provider/api_provider.dart';
import 'package:heroes/external/hero_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockApiProvider extends Mock implements ApiProvider {}

void main() {
  group('Hero Repository', () {
    final heroes = <HeroEntity>[
      HeroEntity(
        id: 1,
        name: 'hero1',
        gender: Gender.female(),
        alignment: HeroAlignment.bad(),
      ),
      HeroEntity(
        id: 2,
        name: 'hero2',
        gender: Gender.male(),
        alignment: HeroAlignment.neutral(),
      ),
      HeroEntity(
        id: 3,
        name: 'hero3',
        gender: Gender.male(),
        alignment: HeroAlignment.bad(),
      ),
      HeroEntity(
        id: 4,
        name: 'hero4',
        gender: Gender.nonBinary(),
        alignment: HeroAlignment.good(),
      ),
      HeroEntity(
        id: 5,
        name: 'hero5',
        gender: Gender.female(),
        alignment: HeroAlignment.bad(),
      ),
      HeroEntity(
        id: 6,
        name: 'hero6',
        gender: Gender.female(),
        alignment: HeroAlignment.neutral(),
      ),
    ];

    late ApiProvider apiProvider;
    late HeroRepository heroRepository;

    setUp(() {
      apiProvider = MockApiProvider();
      heroRepository = HeroRepository(apiProvider: apiProvider);
      when(() => apiProvider.all).thenAnswer((_) async => heroes);
    });

    test('should return all heroes', () async {
      final result = await heroRepository.all().run();
      List<HeroEntity> allHeroes = result.fold((_) => [], id);
      expect(allHeroes.length, 6);
    });

    test('should return all male heroes', () async {
      final options = GetHeroesOptions(gender: Gender.male());
      final result = await heroRepository.all(options).run();
      List<HeroEntity> allHeroes = result.fold((_) => [], id);
      expect(allHeroes.length, 2);
    });

    test('should return all famale heroines', () async {
      final options = GetHeroesOptions(gender: Gender.female());
      final result = await heroRepository.all(options).run();
      List<HeroEntity> allHeroes = result.fold((_) => [], id);
      expect(allHeroes.length, 3);
    });

    test('should return all non-binary heroes', () async {
      final options = GetHeroesOptions(gender: Gender.nonBinary());
      final result = await heroRepository.all(options).run();
      List<HeroEntity> allHeroes = result.fold((_) => [], id);
      expect(allHeroes.length, 1);
    });
  });
}
