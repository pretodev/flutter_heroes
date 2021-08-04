import 'package:dio/dio.dart';
import 'package:heroes/domain/entities/alignment.dart';
import 'package:heroes/domain/entities/gender.dart';
import 'package:heroes/domain/entities/hero.dart';
import 'package:heroes/domain/entities/hero_attributes.dart';

class ApiProvider {
  final Dio _client;

  const ApiProvider({required Dio client}) : _client = client;

  Future<List<HeroEntity>> get all async {
    final response = await _client.get('/all.json');
    return (response.data as Iterable).map(
      (map) {
        final genderMap = map['appearance']['gender'];
        final gender = genderMap == 'Male'
            ? Gender.male()
            : genderMap == 'Female'
                ? Gender.female()
                : Gender.nonBinary();
        final alignmentMap = map['biography']['alignment'];
        final alignment = alignmentMap == 'good'
            ? HeroAlignment.good()
            : alignmentMap == 'bad'
                ? HeroAlignment.bad()
                : HeroAlignment.neutral();
        final attributesMap = map['powerstats'];
        final attributes = HeroAttributes(
          combat: attributesMap['combat'],
          durability: attributesMap['durability'],
          intelligence: attributesMap['intelligence'],
          power: attributesMap['power'],
          speed: attributesMap['speed'],
          strength: attributesMap['strength'],
        );
        return HeroEntity(
          id: map['id'],
          name: map['name'],
          gender: gender,
          alignment: alignment,
          attributes: attributes,
        );
      },
    ).toList();
  }
}
