import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/locality.dart';

part 'client_models.freezed.dart';
part 'client_models.g.dart';

@freezed
class Client with _$Client {
  const factory Client({
    required int id,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    required String? description,
    required String phone,
    required Locality address,
    required Employee creator,

    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
  }) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}