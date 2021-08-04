import 'package:fpdart/fpdart.dart';
import 'package:heroes/domain/adapters/repositories/hero_repository_interface.dart';
import 'package:heroes/domain/entities/gender.dart';
import 'package:heroes/domain/entities/hero.dart';

class GetHeroesOptions {
  final Gender? gender;

  const GetHeroesOptions({this.gender});
}

class GetHeroes {
  final HeroRepositoryInterface _heroRepository;

  const GetHeroes({required HeroRepositoryInterface heroRepository})
      : _heroRepository = heroRepository;

  TaskEither<Exception, List<HeroEntity>> call([
    GetHeroesOptions options = const GetHeroesOptions(),
  ]) {
    return _heroRepository.all(options);
  }
}
