import 'package:freezed_annotation/freezed_annotation.dart';

part 'office.freezed.dart';
part 'office.g.dart';

@freezed
class Office with _$Office {
  const factory Office({
    required int id,
    required String title,
    @JsonKey(name: "filter_count") required int filterCount,
    required int balance,
}) = _Office;

  factory Office.fromJson(Map<String, dynamic> json) => _$OfficeFromJson(json);
}