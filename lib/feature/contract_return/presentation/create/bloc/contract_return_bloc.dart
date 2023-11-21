import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/mappers/contract_return_mapper.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract_return/domain/contract_return_interactor.dart';
import 'package:hasap_admin/feature/contract_return/presentation/create/bloc/contract_return_create_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class ContractReturnCreateBloc extends SrBloc<ContractReturnCreateEvent, ContractReturnCreateState, ContractReturnCreateSR> {
  final ContractorReturnInteractor interactor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;
  final ContractReturnMapper _mapper;

  ContractReturnCreateBloc(this.interactor, this._notifyErrorSnackbar, this._mapper) : super(const ContractReturnCreateState.empty()) {
    on<ContractReturnCreateEventInit>(_init);
    on<ContractReturnCreateEventCreate>(_create);
    on<ContractReturnCreateEventUpdate>(_update);
    on<ContractReturntCreateEventSelectContract>(_selectedContract);
    on<ContractReturnCreateEventSelectDate>(_selectedDate);
  }

  FutureOr<void> _init(ContractReturnCreateEventInit event, Emitter<ContractReturnCreateState> emit) async {
    final contracts = await interactor.getContracts();
    ContractData? contractData;
    for (var contract in contracts) {
      if (contract.contract.id == event.contractReturn?.contractReturn.contractId) contractData = contract;
    }

    emit(ContractReturnCreateState.data(
      isLoading: false,
      formKey: GlobalKey<FormState>(),
      date: event.contractReturn?.contractReturn.date ?? DateTime.now(),
      contract: contractData,
      reason: TextEditingController(text: event.contractReturn?.contractReturn.reason ?? ""),
      contractReturn: event.contractReturn,
    ));
  }

  FutureOr<void> _create(ContractReturnCreateEventCreate event, Emitter<ContractReturnCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await interactor.createDb(await _mapper.fromContractReturnCreateStateData(data: state.data, forCreate: true));

    if (result.isLeft) {
      addSr(ContractReturnCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const ContractReturnCreateSR.successNotify(text: "Toleg goshuldyy"));
      addSr(const ContractReturnCreateSR.created());
    }
  }

  FutureOr<void> _update(ContractReturnCreateEventUpdate event, Emitter<ContractReturnCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await interactor.updateDb(await _mapper.fromContractReturnCreateStateData(data: state.data, forCreate: false));

    if (result.isLeft) {
      addSr(ContractReturnCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const ContractReturnCreateSR.successNotify(text: "Toleg uytgedildi"));
      addSr(const ContractReturnCreateSR.created());
      }
      }

  Future<void> _selectedContract(ContractReturntCreateEventSelectContract event, Emitter<ContractReturnCreateState> emit) async {
    emit(state.data.copyWith(contract: event.contract));
  }

  Future<void> _selectedDate(ContractReturnCreateEventSelectDate event, Emitter<ContractReturnCreateState> emit) async {
    emit(state.data.copyWith(date: event.date));
  }
}
