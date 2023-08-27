import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/payment/domain/payment_interactor.dart';
import 'package:hasap_admin/feature/payment/presentation/create/bloc/payment_create_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class PaymentCreateBloc extends SrBloc<PaymentCreateEvent, PaymentCreateState, PaymentCreateSR> {
  final PaymentInteractor paymentInteractor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;

  PaymentCreateBloc(this.paymentInteractor, this._notifyErrorSnackbar) : super(const PaymentCreateState.empty()) {
    on<PaymentCreateEventInit>(_init);
    on<PaymentCreateEventCreate>(_create);
    on<PaymentCreateEventUpdate>(_update);
    on<PaymentCreateEventSelectContract>(_selectedContract);
    on<PaymentCreateEventSelectDate>(_selectedDate);
  }

  FutureOr<void> _init(PaymentCreateEventInit event, Emitter<PaymentCreateState> emit) async {
    emit(PaymentCreateState.data(
      isLoading: false,
      formKey: GlobalKey<FormState>(),
      amount: TextEditingController(text: event.payment?.amount.toString()),
      date: event.payment?.date ?? DateTime.now(),
      contract: event.payment?.contract,
      payment: event.payment,
      comment: TextEditingController(text: event.payment?.comment),
    ));
  }

  FutureOr<void> _create(PaymentCreateEventCreate event, Emitter<PaymentCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await paymentInteractor.create(_formattingData(state));

    if (result.isLeft) {
      addSr(PaymentCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const PaymentCreateSR.successNotify(text: "Toleg goshuldyy"));
      addSr(PaymentCreateSR.created(payment: result.right));
    }
  }

  Map<String, dynamic> _formattingData(PaymentCreateState state) {
    Map<String, dynamic> data = {
      "amount": state.data.amount.text,
      "date": dateFormatterYyyyMmDd.format(state.data.date),
      "contract_id": state.data.contract?.id,
      "comment": state.data.comment.text,
    };
    return data;
  }

  FutureOr<void> _update(PaymentCreateEventUpdate event, Emitter<PaymentCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await paymentInteractor.update(state.data.payment!.id, _formattingData(state));

    if (result.isLeft) {
      addSr(PaymentCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const PaymentCreateSR.successNotify(text: "Toleg uytgedildi"));
      addSr(PaymentCreateSR.created(payment: result.right));
    }
  }

  Future<void> _selectedContract(PaymentCreateEventSelectContract event, Emitter<PaymentCreateState> emit) async {
    emit(state.data.copyWith(contract: event.contract));
  }

  Future<void> _selectedDate(PaymentCreateEventSelectDate event, Emitter<PaymentCreateState> emit) async {
    emit(state.data.copyWith(date: event.date));
  }
}