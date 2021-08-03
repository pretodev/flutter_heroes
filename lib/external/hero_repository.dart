import 'package:fpdart/fpdart.dart';
import 'package:heroes/domain/adapters/repositories/hero_repository_interface.dart';
import 'package:heroes/domain/entities/hero.dart';
import 'package:heroes/external/api_provider/api_provider.dart';

class HeroRepository extends HeroRepositoryInterface {
  final ApiProvider _apiProvider;

  const HeroRepository({required ApiProvider apiProvider})
      : _apiProvider = apiProvider;

  @override
  TaskEither<Exception, List<HeroEntity>> all() {
    return TaskEither(() async {
      return Either.right(await _apiProvider.all);
    });
  }
}
