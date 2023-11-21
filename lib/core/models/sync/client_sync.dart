import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_sync.freezed.dart';

part 'client_sync.g.dart';

@freezed
class ClientSync with _$ClientSync {
  const factory ClientSync({
    required String id,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "sur_name") required String? surName,
    required String phone,
    required String? phone2,
    required String? description,
    @JsonKey(name: "office") required String officeId,
    @JsonKey(name: "region") required int regionId,
    @JsonKey(name: "creator") required String creatorId,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
    @JsonKey(name: "is_deleted") required bool isDeleted,
    @Default(true) isSynced,
  }) = _ClientSync;

  factory ClientSync.fromJson(Map<String, dynamic> json) => _$ClientSyncFromJson(json);
}
