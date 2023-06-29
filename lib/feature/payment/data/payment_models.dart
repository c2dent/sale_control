import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';

part 'payment_models.freezed.dart';
part 'payment_models.g.dart';

@freezed
class Payment with _$Payment {
  const factory Payment({
    required int id,
    required String sum,
    required DateTime date,
    required Client client,
    required Contract contract,
    required String status,
    @JsonKey(name: "expected_sum") required String expectedSum,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);
}