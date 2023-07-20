import 'package:freezed_annotation/freezed_annotation.dart';

part 'region.freezed.dart';
part 'region.g.dart';

@freezed
class Region with _$Region {
  const factory Region({
    required int id,
    required String name,
    required int level,
    @JsonKey(name: "children_count") required int childrenCount,
    @JsonKey(name: "full_name") required String fullName,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}
