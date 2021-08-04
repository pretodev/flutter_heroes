import 'package:fpdart/fpdart.dart';
import 'package:heroes/domain/entities/hero.dart';
import 'package:heroes/domain/usecases/get_heroes.dart';

abstract class HeroRepositoryInterface {
  const HeroRepositoryInterface();

  TaskEither<Exception, List<HeroEntity>> all([
    GetHeroesOptions options = const GetHeroesOptions(),
  ]);
}
