import 'package:flutter_triple/flutter_triple.dart';
import 'package:heroes/domain/entities/hero.dart';
import 'package:heroes/domain/usecases/get_heroes.dart';

class HeroesStore extends StreamStore<Exception, List<HeroEntity>> {
  HeroesStore({required GetHeroes getHeroes})
      : _getHeroes = getHeroes,
        super([]);

  final GetHeroes _getHeroes;

  void loadHeroes() async {
    setLoading(true);
    final result = await _getHeroes().run();
    result.fold(setError, update);
    setLoading(false);
  }
}
