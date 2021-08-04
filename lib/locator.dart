import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:heroes/domain/adapters/repositories/hero_repository_interface.dart';
import 'package:heroes/domain/usecases/get_heroes.dart';
import 'package:heroes/domain/usecases/get_random_hero.dart';
import 'package:heroes/external/api_provider/api_provider.dart';
import 'package:heroes/external/hero_repository.dart';

GetIt locator = GetIt.instance;

void setup() {
  final client = Dio();

  locator.registerLazySingleton(
    () => ApiProvider(client: client),
  );

  locator.registerLazySingleton<HeroRepositoryInterface>(
    () => HeroRepository(apiProvider: locator()),
  );

  locator.registerLazySingleton(
    () => GetHeroes(heroRepository: locator<HeroRepositoryInterface>()),
  );

  locator.registerLazySingleton(
    () => GetRandomHero(heroRepository: locator<HeroRepositoryInterface>()),
  );
}
