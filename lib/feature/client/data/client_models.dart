import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/models/locality.dart';

part 'client_models.freezed.dart';
part 'client_models.g.dart';

@freezed
class Client with _$Client {
  const factory Client({
    required String id,
    required String firstName,
    required String lastName,
    required String phone,
    required Locality address,

    required DateTime createdAt,
    required DateTime modifiedAt,
  }) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}