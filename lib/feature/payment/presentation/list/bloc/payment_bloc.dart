import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/services/settings_service.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/payment/domain/payment_interactor.dart';
import 'package:hasap_admin/feature/payment/presentation/list/bloc/payment_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class PaymentBloc extends SrBloc<PaymentEvent, PaymentState, PaymentSR> {
  final PaymentInteractor paymentInteractor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;
  final SettingsService settingsService;

  PaymentBloc(
    this.paymentInteractor,
    this._notifyErrorSnackbar,
  )   : settingsService = GetIt.instance.get<SettingsService>(),
        super(const PaymentState.empty()) {
    on<PaymentEventInit>(_init);
    on<PaymentEventFilter>(_filter);
    on<PaymentEventResetFilter>(_resetFilter);
    on<PaymentEventDelete>(_delete);
  }

  FutureOr<void> _init(PaymentEventInit event, Emitter<PaymentState> emit) async {

    Map<String, List<CustomFilterWidget>> filters = {};

    final result = await paymentInteractor.list();

    if (result.isLeft) {
      addSr(PaymentSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    } else {
      emit(PaymentState.data(
        isLoading: false,
        filters: filters,
        payments: result.right,
      ));
    }
  }

  FutureOr<void> _filter(PaymentEventFilter event, Emitter<PaymentState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await paymentInteractor.list();
    if (result.isLeft) {
      addSr(PaymentSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }

    emit(state.data.copyWith(isLoading: false, payments: result.right));
  }

  FutureOr<void> _resetFilter(PaymentEventResetFilter event, Emitter<PaymentState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    // for (var item in state.data.filters) {
    //   item.clear();
    // }

    final result = await paymentInteractor.list();
    if (result.isLeft) {
      addSr(PaymentSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }

    emit(state.data.copyWith(isLoading: false, payments: result.right));
  }

  FutureOr<void> _delete(PaymentEventDelete event, Emitter<PaymentState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await paymentInteractor.delete(event.payment);
    if (result.isLeft) {
      emit(state.data.copyWith(isLoading: false));
      addSr(PaymentSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    } else {
      addSr(const PaymentSR.successNotify(text: "Toleg pozuldy"));
      addSr(PaymentSR.delete(payment: event.payment));
      emit(state.data.copyWith(isLoading: false));
    }
  }
}
