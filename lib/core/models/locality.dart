import 'package:hasap_admin/core/models/area.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'locality.freezed.dart';
part 'locality.g.dart';

@freezed
class Locality with _$Locality {
  const factory Locality({
    required String id,
    required String name,
    required Area area,
  }) = _Locality;

  factory Locality.fromJson(Map<String, dynamic> json) => _$LocalityFromJson(json);
}