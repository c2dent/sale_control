import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/mappers/client_mapper.dart';
import 'package:hasap_admin/core/mappers/contract_mapper.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/contract/domain/contract_interactor.dart';
import 'package:hasap_admin/feature/contract/presentation/create/bloc/contract_create_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class ContractCreateBloc extends SrBloc<ContractCreateEvent, ContractCreateState, ContractCreateSR> {
  final ContractInteractor interactor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;
  final ContractMapper _mapper;
  final ClientMapper _clientMapper;

  ContractCreateBloc(this.interactor, this._notifyErrorSnackbar, this._mapper, this._clientMapper) : super(const ContractCreateState.empty()) {
    on<ContractCreateEventInit>(_init);
    on<ContractCreateEventCreate>(_create);
    on<ContractCreateEventUpdate>(_update);
    on<ContractCreateEventSetupDate>(_selectedDate);
    on<ContractCreateEventSelectAdvertiser>(_selectedAdvertiser);
    on<ContractCreateEventSelectRegion>(_selectedRegion);
  }

  Future<void> _init(ContractCreateEventInit event, Emitter<ContractCreateState> emit) async {
    final employees = await interactor.getEmployees({});
    List<Region> regions = [];
    final regionsResult = await interactor.getAllRegions();
    if (regionsResult.isRight) regions = regionsResult.right;

    Employee? advertiser;
    Region? region;

    for (var employee in employees) {
      if (employee.id == event.contract?.contract.advertiserId) advertiser = employee;
    }

    for (var reg in regions) {
      if (reg.id == event.contract?.client.regionId) region = reg;
    }

    emit(ContractCreateState.data(
        isLoading: false,
        formKey: GlobalKey<FormState>(),
        firstName: TextEditingController(text: event.contract?.client.firstName ?? ""),
        lastName: TextEditingController(text: event.contract?.client.lastName ?? ""),
        phone: TextEditingController(text: event.contract?.client.phone ?? ""),
        phone2: TextEditingController(text: event.contract?.client.phone2 ?? ""),
        region: region,
        regions: [region, null, null, null],
        description: TextEditingController(text: event.contract?.client.description ?? ""),
        advertiser: advertiser,
        monthCount: TextEditingController(text: event.contract?.contract.monthCount.toString() ?? ""),
        dueDateOnMonth: TextEditingController(text: event.contract?.contract.debtOnMonth.toString() ?? ""),
        priceAmount: TextEditingController(text: event.contract?.contract.priceAmount.toString() ?? ""),
        filterCount: TextEditingController(text: event.contract?.contract.countFilter.toString() ?? "1"),
        paidAmount: TextEditingController(text: "0"),
        setupDate: event.contract?.contract.setupDate ?? DateTime.now(),
        contract: event.contract));
  }

  Future<void> _create(ContractCreateEventCreate event, Emitter<ContractCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    ClientTableCompanion clientTableCompanion = await _clientMapper.fromStateData(data: state.data, forCreate: true);
    ContractTableCompanion contractTableCompanion = await _mapper.fromStateData(state.data, true, clientTableCompanion.id.value);
    final result = await interactor.createDb(contractTableCompanion, clientTableCompanion);

    if (result.isLeft) {
      addSr(ContractCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const ContractCreateSR.successNotify(text: "Shertnama goshuldyy"));
      addSr(const ContractCreateSR.created());
    }
  }

  Future<void> _update(ContractCreateEventUpdate event, Emitter<ContractCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    ClientTableCompanion clientTableCompanion = await _clientMapper.fromStateData(data: state.data, forCreate: false);
    ContractTableCompanion contractTableCompanion = await _mapper.fromStateData(state.data, false, clientTableCompanion.id.value);
    final result = await interactor.updateDb(contractTableCompanion, clientTableCompanion);

    if (result.isLeft) {
      addSr(ContractCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
    } else {
      addSr(const ContractCreateSR.successNotify(text: "Toleg uytgedildi"));
      addSr(const ContractCreateSR.created());
    }
    emit(state.data.copyWith(isLoading: false));
  }

  Future<void> _selectedDate(ContractCreateEventSetupDate event, Emitter<ContractCreateState> emit) async {
    emit(state.data.copyWith(setupDate: event.date));
  }

  Future<void> _selectedAdvertiser(ContractCreateEventSelectAdvertiser event, Emitter<ContractCreateState> emit) async {
    emit(state.data.copyWith(advertiser: event.employee));
  }

  FutureOr<void> _selectedRegion(ContractCreateEventSelectRegion event, Emitter<ContractCreateState> emit) async {
    emit(state.data.copyWith(region: event.region, regions: event.regions));
  }
}
