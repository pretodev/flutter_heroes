import 'package:fpdart/fpdart.dart';
import 'package:heroes/domain/adapters/repositories/hero_repository_interface.dart';
import 'package:heroes/domain/entities/alignment.dart';
import 'package:heroes/domain/entities/gender.dart';
import 'package:heroes/domain/entities/hero.dart';

class GetHeroesOptions {
  final Gender? gender;
  final HeroAlignment? alignment;
  final String? query;

  const GetHeroesOptions({this.query, this.gender, this.alignment});
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
