import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/payment/data/payment_models.dart';

part 'payment_bloc_models.freezed.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.init() = PaymentEventInit;
  const factory PaymentEvent.filter() = PaymentEventFilter;
  const factory PaymentEvent.resetFilter() = PaymentEventResetFilter;
  const factory PaymentEvent.delete({required PaymentData payment}) = PaymentEventDelete;
}

@freezed
class PaymentSR with _$PaymentSR {
  const factory PaymentSR.showDioError({
    required DriftRequestError<DefaultDriftError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar,
  }) = _ShowDioErrorSnackbar;

  const factory PaymentSR.successNotify({required String text}) = _SuccessNotify;

  const factory PaymentSR.delete({required PaymentData payment}) = _PaymentDeleted;
}

@freezed
class PaymentState with _$PaymentState {
  PaymentStateData get data => this as PaymentStateData;

  const PaymentState._();

  const factory PaymentState.empty() = PaymentStateEmpty;

  const factory PaymentState.data({
    required bool isLoading,
    required Map<String, List<CustomFilterWidget>> filters,
    required List<PaymentData> payments,
  }) = PaymentStateData;
}
