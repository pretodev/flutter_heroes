import 'package:fpdart/fpdart.dart';
import 'package:heroes/domain/adapters/repositories/hero_repository_interface.dart';
import 'package:heroes/domain/entities/hero.dart';

class GetRandomHero {
  final HeroRepositoryInterface _heroRepository;

  const GetRandomHero({
    required HeroRepositoryInterface heroRepository,
  }) : _heroRepository = heroRepository;

  TaskEither<Exception, HeroEntity> call() {
    return _heroRepository.random();
  }
}
