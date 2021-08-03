import 'package:dio/dio.dart';
import 'package:heroes/domain/entities/hero.dart';

class ApiProvider {
  final Dio _client;

  const ApiProvider({required Dio client}) : _client = client;

  Future<List<HeroEntity>> get all async {
    final response = await _client.get('/all.json');
    return (response.data as Iterable)
        .map(
          (map) => HeroEntity(
            id: map['id'],
            name: map['name'],
          ),
        )
        .toList();
  }
}
