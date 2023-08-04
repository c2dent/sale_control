import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';

part 'coal_models.freezed.dart';
part 'coal_models.g.dart';

@freezed
class Coal with _$Coal {
  const factory Coal({
    required int id,
    required DateTime date,
    required Contract contract,
    required User creator,

    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
  }) = _Coal;

  factory Coal.fromJson(Map<String, dynamic> json) => _$CoalFromJson(json);
}