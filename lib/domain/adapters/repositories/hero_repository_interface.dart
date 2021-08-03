import 'package:fpdart/fpdart.dart';
import 'package:heroes/domain/entities/hero.dart';

abstract class HeroRepositoryInterface {
  TaskEither<Exception, List<Hero>> all();
}
