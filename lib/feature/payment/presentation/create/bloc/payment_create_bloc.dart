import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/mappers/payment_mapper.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/payment/domain/payment_interactor.dart';
import 'package:hasap_admin/feature/payment/presentation/create/bloc/payment_create_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class PaymentCreateBloc extends SrBloc<PaymentCreateEvent, PaymentCreateState, PaymentCreateSR> {
  final PaymentInteractor paymentInteractor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;
  final PaymentMapper _paymentMapper;

  PaymentCreateBloc(this.paymentInteractor, this._notifyErrorSnackbar, this._paymentMapper) : super(const PaymentCreateState.empty()) {
    on<PaymentCreateEventInit>(_init);
    on<PaymentCreateEventCreate>(_create);
    on<PaymentCreateEventUpdate>(_update);
    on<PaymentCreateEventSelectContract>(_selectedContract);
    on<PaymentCreateEventSelectDate>(_selectedDate);
  }

  FutureOr<void> _init(PaymentCreateEventInit event, Emitter<PaymentCreateState> emit) async {
    final contracts = await paymentInteractor.getContracts();
    ContractData? contractData;
    for (var item in contracts) {
      if (item.contract.id == event.contract?.id) contractData = item;
      if (item.contract.id == event.payment?.payment.contractId) contractData = item;
    }

    emit(PaymentCreateState.data(
      contracts: contracts,
      isLoading: false,
      formKey: GlobalKey<FormState>(),
      amount: TextEditingController(text: event.payment?.payment.paidAmount.toString()),
      date: event.payment?.payment.date ?? DateTime.now(),
      contract: contractData,
      payment: event.payment,
      comment: TextEditingController(text: event.payment?.payment.comment),
    ));
  }

  FutureOr<void> _create(PaymentCreateEventCreate event, Emitter<PaymentCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    if (state.data.contract == null) {
      addSr(const PaymentCreateSR.errorNotify(text: "Shertnama saylanylmadyk"));
      emit(state.data.copyWith(isLoading: false));
      return;
    }

    final result = await paymentInteractor.create(await _paymentMapper.fromPaymentCreateState(state, true));

    if (result.isLeft) {
      addSr(PaymentCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const PaymentCreateSR.successNotify(text: "Toleg goshuldyy"));
      addSr(const PaymentCreateSR.created());
    }
  }

  FutureOr<void> _update(PaymentCreateEventUpdate event, Emitter<PaymentCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await paymentInteractor.update(await _paymentMapper.fromPaymentCreateState(state, false));
    if (result.isLeft) {
      addSr(PaymentCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const PaymentCreateSR.successNotify(text: "Toleg uytgedildi"));
      addSr(const PaymentCreateSR.created());
    }
  }

  Future<void> _selectedContract(PaymentCreateEventSelectContract event, Emitter<PaymentCreateState> emit) async {
    emit(state.data.copyWith(contract: event.contract));
  }

  Future<void> _selectedDate(PaymentCreateEventSelectDate event, Emitter<PaymentCreateState> emit) async {
    emit(state.data.copyWith(date: event.date));
  }
}
