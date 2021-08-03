import 'package:fpdart/fpdart.dart';
import 'package:heroes/domain/adapters/repositories/hero_repository_interface.dart';
import 'package:heroes/domain/entities/hero.dart';

class GetHeroes {
  final HeroRepositoryInterface _heroRepository;

  GetHeroes({required HeroRepositoryInterface heroRepository})
      : _heroRepository = heroRepository;

  TaskEither<Exception, List<Hero>> call() {
    return _heroRepository.all();
  }
}
