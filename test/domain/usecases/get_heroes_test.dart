import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:heroes/domain/adapters/repositories/hero_repository_interface.dart';
import 'package:heroes/domain/entities/hero.dart';
import 'package:heroes/domain/usecases/get_heroes.dart';
import 'package:mocktail/mocktail.dart';

class MockHeroRepository extends Mock implements HeroRepositoryInterface {}

void main() {
  final heroRepository = MockHeroRepository();

  test('should return a heroes list', () async {
    when(() => heroRepository.all()).thenReturn(TaskEither.right([]));
    final getHeroes = GetHeroes(heroRepository: heroRepository);
    final result = await getHeroes().run();
    expect(result.isRight(), true);
    expect(result.fold(id, id), isA<List<Hero>>());
  });
}
