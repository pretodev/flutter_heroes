import 'package:fpdart/fpdart.dart';
import 'package:heroes/domain/adapters/repositories/hero_repository.dart';
import 'package:heroes/domain/entities/hero.dart';

class GetHeroes {
  final HeroRepository _heroRepository;

  GetHeroes({required HeroRepository heroRepository})
      : _heroRepository = heroRepository;

  TaskEither<Exception, List<Hero>> call() {
    return _heroRepository.all();
  }
}
