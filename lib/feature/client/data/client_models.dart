import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/models/user.dart';

part 'client_models.freezed.dart';
part 'client_models.g.dart';

@freezed
class Client with _$Client {
  const factory Client({
    required int id,
    @JsonKey(name: "have_debt") required bool haveDebt,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "sur_name") required String? surName,

    required String? description,
    required String phone,
    required String? phone2,

    required Region region,
    required User creator,

    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
  }) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}