import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/mappers/service_mapper.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';
import 'package:hasap_admin/feature/service/domain/service_interactor.dart';
import 'package:hasap_admin/feature/service/presentation/create/bloc/service_create_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class ServiceCreateBloc extends SrBloc<ServiceCreateEvent, ServiceCreateState, ServiceCreateSR> {
  final ServiceInteractor interactor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;
  final ServiceMapper _mapper;

  ServiceCreateBloc(this.interactor, this._notifyErrorSnackbar, this._mapper) : super(const ServiceCreateState.empty()) {
    on<ServiceCreateEventInit>(_init);
    on<ServiceCreateEventCreate>(_create);
    on<ServiceCreateEventUpdate>(_update);
    on<ServiceCreateEventSelectDate>(_selectedDate);
    on<ServiceCreateEventSelectContractor>(_selectedContractor);
    on<ServiceCreateEventSelectType>(_selectType);
  }

  Future<void> _init(ServiceCreateEventInit event, Emitter<ServiceCreateState> emit) async {
    final contracts = await interactor.getContracts();
    ContractData? contractData;

    for (var contract in contracts) {
      if (contract.contract.id == event.contract?.id) contractData = contract;
      if (contract.contract.id == event.service?.service.contractId) contractData = contract;
    }

    emit(ServiceCreateState.data(
        contracts: contracts,
        isLoading: false,
        formKey: GlobalKey<FormState>(),
        date: event.service?.service.date ?? DateTime.now(),
        contract: contractData,
        comment: TextEditingController(text: event.service?.service.comment),
        amount: TextEditingController(text: event.service?.service.amount.toString() ?? ""),
        type: ServiceType.getServiceTypeFromString(event.service?.service.type),
        service: event.service));
  }

  Future<void> _create(ServiceCreateEventCreate event, Emitter<ServiceCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.create(await _mapper.fromServiceCreateStateData(data: state.data, forCreate: true));

    if (result.isLeft) {
      addSr(ServiceCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const ServiceCreateSR.successNotify(text: "Hyzmat goshuldyy"));
      addSr(const ServiceCreateSR.created());
    }
  }

  Future<void> _update(ServiceCreateEventUpdate event, Emitter<ServiceCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await interactor.update(await _mapper.fromServiceCreateStateData(data: state.data, forCreate: false));

    if (result.isLeft) {
      addSr(ServiceCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const ServiceCreateSR.successNotify(text: "Hyzmat uytgedildi"));
      addSr(const ServiceCreateSR.created());
    }
  }

  Future<void> _selectedDate(ServiceCreateEventSelectDate event, Emitter<ServiceCreateState> emit) async {
    emit(state.data.copyWith(date: event.date));
  }

  Future<void> _selectedContractor(ServiceCreateEventSelectContractor event, Emitter<ServiceCreateState> emit) async {
    emit(state.data.copyWith(contract: event.contract));
  }

  Future<void> _selectType(ServiceCreateEventSelectType event, Emitter<ServiceCreateState> emit) async {
    emit(state.data.copyWith(type: event.type));
  }
}
