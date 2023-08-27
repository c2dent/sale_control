import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/contract_return/domain/contract_return_interactor.dart';
import 'package:hasap_admin/feature/contract_return/presentation/create/bloc/contract_return_create_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class ContractReturnCreateBloc extends SrBloc<ContractReturnCreateEvent, ContractReturnCreateState, ContractReturnCreateSR> {
  final ContractorReturnInteractor interactor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;

  ContractReturnCreateBloc(this.interactor, this._notifyErrorSnackbar) : super(const ContractReturnCreateState.empty()) {
    on<ContractReturnCreateEventInit>(_init);
    on<ContractReturnCreateEventCreate>(_create);
    on<ContractReturnCreateEventUpdate>(_update);
    on<ContractReturntCreateEventSelectContract>(_selectedContract);
    on<ContractReturnCreateEventSelectDate>(_selectedDate);
  }

  FutureOr<void> _init(ContractReturnCreateEventInit event, Emitter<ContractReturnCreateState> emit) async {
    emit(ContractReturnCreateState.data(
      isLoading: false,
      formKey: GlobalKey<FormState>(),
      date: event.contractReturn?.date ?? DateTime.now(),
      contract: event.contractReturn?.contract,
      reason: TextEditingController(text: event.contractReturn?.reason ?? ""),
      contractReturn: event.contractReturn,
    ));
  }

  FutureOr<void> _create(ContractReturnCreateEventCreate event, Emitter<ContractReturnCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await interactor.create(_formattingData(state));

    if (result.isLeft) {
      addSr(ContractReturnCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const ContractReturnCreateSR.successNotify(text: "Toleg goshuldyy"));
      addSr(ContractReturnCreateSR.created(contractReturn: result.right));
    }
  }

  Map<String, dynamic> _formattingData(ContractReturnCreateState state) {
    Map<String, dynamic> data = {
      "date": dateFormatterYyyyMmDd.format(state.data.date),
      "contract_id": state.data.contract?.id,
      "reason": state.data.reason.text,
    };
    return data;
  }

  FutureOr<void> _update(ContractReturnCreateEventUpdate event, Emitter<ContractReturnCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await interactor.update(state.data.contractReturn!.id, _formattingData(state));

    if (result.isLeft) {
      addSr(ContractReturnCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const ContractReturnCreateSR.successNotify(text: "Toleg uytgedildi"));
      addSr(ContractReturnCreateSR.created(contractReturn: result.right));
    }
  }

  Future<void> _selectedContract(ContractReturntCreateEventSelectContract event, Emitter<ContractReturnCreateState> emit) async {
    emit(state.data.copyWith(contract: event.contract));
  }

  Future<void> _selectedDate(ContractReturnCreateEventSelectDate event, Emitter<ContractReturnCreateState> emit) async {
    emit(state.data.copyWith(date: event.date));
  }
}
