import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_sync.freezed.dart';

part 'employee_sync.g.dart';

@freezed
class EmployeeSync with _$EmployeeSync {
  const factory EmployeeSync({
    required String id,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "sur_name") required String? surName,
    required String phone,
    required String? phone2,
    @JsonKey(name: "office") required String officeId,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
    @JsonKey(name: "is_deleted") required bool isDeleted,
    @Default(true) isSynced,
  }) = _EmployeeSync;

  factory EmployeeSync.fromJson(Map<String, dynamic> json) => _$EmployeeSyncFromJson(json);
}
