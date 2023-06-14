import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/models/region.dart';

part 'area.freezed.dart';
part 'area.g.dart';

@freezed
class Area with _$Area{
  const factory Area({
    required String id,
    required String name,
    required Region region,
  }) = _Area;

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
}