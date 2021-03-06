import 'dart:math';

import 'package:fpdart/fpdart.dart';
import 'package:heroes/domain/adapters/repositories/hero_repository_interface.dart';
import 'package:heroes/domain/entities/hero.dart';
import 'package:heroes/domain/usecases/get_heroes.dart';
import 'package:heroes/external/api_provider/api_provider.dart';

class HeroRepository extends HeroRepositoryInterface {
  final ApiProvider _apiProvider;

  const HeroRepository({
    required ApiProvider apiProvider,
  }) : _apiProvider = apiProvider;

  @override
  TaskEither<Exception, List<HeroEntity>> all([
    GetHeroesOptions options = const GetHeroesOptions(),
  ]) {
    return TaskEither(() async {
      var heroes = await _apiProvider.all;
      if (options.gender != null)
        heroes = heroes.where((hero) => hero.gender == options.gender).toList();
      if (options.alignment != null)
        heroes = heroes
            .where((hero) => hero.alignment == options.alignment)
            .toList();
      if (options.query != null)
        heroes = heroes
            .where((hero) =>
                hero.name.toLowerCase().contains(options.query!.toLowerCase()))
            .toList();
      return Either.right(heroes);
    });
  }

  @override
  TaskEither<Exception, HeroEntity> random() {
    return TaskEither(() async {
      final heroes = await _apiProvider.all;
      final randomIdx = Random().nextInt(heroes.length);
      return Either.right(heroes[randomIdx]);
    });
  }
}
