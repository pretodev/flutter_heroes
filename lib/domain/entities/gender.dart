import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender.freezed.dart';

@freezed
class Gender with _$Gender {
  const Gender._();

  const factory Gender.male() = Male;
  const factory Gender.female() = Female;
  const factory Gender.nonBinary() = NonBinary;
}
