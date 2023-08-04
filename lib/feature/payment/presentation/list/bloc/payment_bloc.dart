import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/feature/payment/domain/payment_interactor.dart';
import 'package:hasap_admin/feature/payment/presentation/list/bloc/payment_bloc_models.dart';
import 'package:hasap_admin/feature/payment/presentation/list/ui/filters/task_master.dart';
import 'package:injectable/injectable.dart';

@injectable
class PaymentBloc extends SrBloc<PaymentEvent, PaymentState, PaymentSR> {
  final PaymentInteractor paymentInteractor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;

  PaymentBloc(
      this.paymentInteractor,
      this._notifyErrorSnackbar,
      ) : super(const PaymentState.empty()) {
    on<PaymentEventInit>(_init);
    on<PaymentEventFilter>(_filter);
    on<PaymentEventResetFilter>(_resetFilter);
    on<PaymentEventDelete>(_delete);
  }

  FutureOr<void> _init(PaymentEventInit event, Emitter<PaymentState> emit) async {
    List<Filter> filters = [
      Filter<Employee>(
        parameterName: 'task_master',
        widget: TaskMasterDropdown(bloc: this, onChange: (Employee? value) {}, values: const []),
        parameterValue: (dynamic employee) => employee.id.toString(),
      ),
    ];

    final result = await paymentInteractor.list(filters: filters);

    if (result.isLeft) {
      addSr(PaymentSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    } else {
      emit(
          PaymentState.data(
            isLoading: false,
            filters: filters,
            payments: result.right,
          )
      );
    }
  }

  FutureOr<void> _filter(PaymentEventFilter event, Emitter<PaymentState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await paymentInteractor.list(filters: state.data.filters);
    if (result.isLeft) {
      addSr(PaymentSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }

    emit(state.data.copyWith(isLoading: false, payments: result.right));
  }

  FutureOr<void> _resetFilter(PaymentEventResetFilter event, Emitter<PaymentState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    for (var item in state.data.filters) {
      item.clear();
    }

    final result = await paymentInteractor.list(filters: state.data.filters);
    if (result.isLeft) {
      addSr(PaymentSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }

    emit(state.data.copyWith(isLoading: false, payments: result.right));
  }

  FutureOr<void> _delete(PaymentEventDelete event, Emitter<PaymentState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await paymentInteractor.delete(event.payment.id);
    if (result.isLeft) {
      emit(state.data.copyWith(isLoading: false));
      addSr(PaymentSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    } else {
      addSr(const PaymentSR.successNotify(text: "Mushderi pozuldy"));
      addSr(PaymentSR.delete(payment: event.payment));
      emit(state.data.copyWith(isLoading: false));
    }
  }

}