import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';

part 'service_models.freezed.dart';
part 'service_models.g.dart';

@freezed
class Service with _$Service {
  const factory Service({
    required int id,
    required Contract contract,
    required ServiceType type,
    required String comment,
    required int amount,
    required DateTime date,
    required User creator,

    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);
}

enum ServiceType {
  @JsonKey(name: "FILTER") FILTER(value: "FILTER", name: "Filter"),
  @JsonKey(name: "COAL") COAL(value: "COAL", name: "Komur");

  const ServiceType({
        required this.name,
        required this.value,
      });
  final String name;
  final String value;
}

