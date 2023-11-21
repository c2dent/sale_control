import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/models/user.dart';

part 'operation.freezed.dart';
part 'operation.g.dart';

@freezed
class Operation with _$Operation {
  const factory Operation({
    required int id,
    @JsonKey(name: "operation_type") required String operationType,
    @JsonKey(name: "source_office") required Office sourceOffice,
    @JsonKey(name: "target_office") required Office targetOffice,
    required DateTime date,
    required int amount,

    required Employee creator,

    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
}) = _Operation;

  factory Operation.fromJson(Map<String, dynamic> json) => _$OperationFromJson(json);
}