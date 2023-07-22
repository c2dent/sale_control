import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';

part 'payment_models.freezed.dart';
part 'payment_models.g.dart';

@freezed
class Payment with _$Payment {
  const factory Payment({
    required int id,
    required int amount,
    @JsonKey(name: "remainder_amount") required String remainderAmount,
    required DateTime date,

    required Contract contract,
    required User creator,

    @JsonKey(name: "is_confirm") required bool isConfirm,
    @JsonKey(name: "confirm_date") DateTime? confirmDate,

    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);
}