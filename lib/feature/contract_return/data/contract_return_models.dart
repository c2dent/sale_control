import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';

part 'contract_return_models.freezed.dart';
part 'contract_return_models.g.dart';

@freezed
class ContractReturn with _$ContractReturn {
  const factory ContractReturn({
    required int id,
    required Contract contract,
    required DateTime date,
    required User creator,
    String? reason,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
  }) = _ContractReturn;

  factory ContractReturn.fromJson(Map<String, dynamic> json) => _$ContractReturnFromJson(json);
}
