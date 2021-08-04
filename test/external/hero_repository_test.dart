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
        name: 'Laila',
        gender: Gender.female(),
        alignment: HeroAlignment.bad(),
      ),
      HeroEntity(
        id: 2,
        name: 'Ronald',
        gender: Gender.male(),
        alignment: HeroAlignment.neutral(),
      ),
      HeroEntity(
        id: 3,
        name: 'Ronaldo',
        gender: Gender.male(),
        alignment: HeroAlignment.bad(),
      ),
      HeroEntity(
        id: 4,
        name: 'Lucimar',
        gender: Gender.nonBinary(),
        alignment: HeroAlignment.good(),
      ),
      HeroEntity(
        id: 5,
        name: 'Lara',
        gender: Gender.female(),
        alignment: HeroAlignment.bad(),
      ),
      HeroEntity(
        id: 6,
        name: 'Veronica',
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

    test('should return all good heroes', () async {
      final options = GetHeroesOptions(alignment: HeroAlignment.good());
      final result = await heroRepository.all(options).run();
      List<HeroEntity> allHeroes = result.fold((_) => [], id);
      expect(allHeroes.length, 1);
    });

    test('should return all bad heroes', () async {
      final options = GetHeroesOptions(alignment: HeroAlignment.bad());
      final result = await heroRepository.all(options).run();
      List<HeroEntity> allHeroes = result.fold((_) => [], id);
      expect(allHeroes.length, 3);
    });

    test('should return all neutral heroes', () async {
      final options = GetHeroesOptions(alignment: HeroAlignment.neutral());
      final result = await heroRepository.all(options).run();
      List<HeroEntity> allHeroes = result.fold((_) => [], id);
      expect(allHeroes.length, 2);
    });

    test('should return all heroes with name container "la"', () async {
      final options = GetHeroesOptions(query: 'la');
      final result = await heroRepository.all(options).run();
      List<HeroEntity> allHeroes = result.fold((_) => [], id);
      expect(allHeroes.length, 2);
    });
  });
}
