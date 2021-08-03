import 'package:fpdart/fpdart.dart';
import 'package:heroes/domain/entities/hero.dart';

abstract class HeroRepository {
  TaskEither<Exception, List<Hero>> all();
}
