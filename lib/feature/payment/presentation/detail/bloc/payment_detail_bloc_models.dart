
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/payment/data/payment_models.dart';

part 'payment_detail_bloc_models.freezed.dart';

@freezed
class PaymentDetailEvent with _$PaymentDetailEvent {
  const factory PaymentDetailEvent.init({required PaymentTableData payment}) = PaymentDetailEventInit;

  const factory PaymentDetailEvent.update() = PaymentDetailEventUpdate;
}

@freezed
class PaymentDetailSR with _$PaymentDetailSR {
  const factory PaymentDetailSR.successNotify({required String text}) = _SuccessNotify;
  const factory PaymentDetailSR.errorNotify({required String text}) = _ErrorNotify;
}

@freezed
class PaymentDetailState with _$PaymentDetailState {
  PaymentDetailStateData get data => this as PaymentDetailStateData;

  const PaymentDetailState._();

  const factory PaymentDetailState.empty() = PaymentDetailEmpty;

  const factory PaymentDetailState.data({
    required bool isLoading,
    required PaymentDetail paymentDetail,
    required PaymentTableData paymentTableData,
  }) = PaymentDetailStateData;
}
