import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/contract/domain/contract_interactor.dart';
import 'package:hasap_admin/feature/contract/presentation/create/bloc/contract_create_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class ContractCreateBloc extends SrBloc<ContractCreateEvent, ContractCreateState, ContractCreateSR> {
  final ContractInteractor interactor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;

  ContractCreateBloc(this.interactor, this._notifyErrorSnackbar) : super(const ContractCreateState.empty()) {
    on<ContractCreateEventInit>(_init);
    on<ContractCreateEventCreate>(_create);
    on<ContractCreateEventUpdate>(_update);
    on<ContractCreateEventSelectRegion>(_selectedRegion);
    on<ContractCreateEventSetupDate>(_selectedDate);
    on<ContractCreateEventSelectAdvertiser>(_selectedAdvertiser);
    on<ContractCreateEventSelectClient>(_selectedClient);
  }

  Future<void> _init(ContractCreateEventInit event, Emitter<ContractCreateState> emit) async {
    emit(ContractCreateState.data(
        isLoading: false,
        formKey: GlobalKey<FormState>(),
        region: event.contract?.region,
        regions: [event.contract?.region, null, null, null],
        client: event.contract?.client,
        advertiser: event.contract?.advertiser,
        monthCount: TextEditingController(text: event.contract?.monthCount.toString() ?? ""),
        dueDateOnMonth: TextEditingController(text: event.contract?.dueDateOnMonth.toString() ?? ""),
        priceAmount: TextEditingController(text: event.contract?.priceAmount.toString() ?? ""),
        startContribution: TextEditingController(text: event.contract?.startContribution.toString() ?? ""),
        filterCount: TextEditingController(text: event.contract?.countFilter.toString() ?? "1"),
        setupDate: event.contract?.setupDate ?? DateTime.now(),
        contract: event.contract));
  }

  Future<void> _create(ContractCreateEventCreate event, Emitter<ContractCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.create(_formattingData(state));

    if (result.isLeft) {
      addSr(ContractCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const ContractCreateSR.successNotify(text: "Mushderi goshuldyy"));
      addSr(ContractCreateSR.created(contract: result.right));
    }
  }

  Future<void> _update(ContractCreateEventUpdate event, Emitter<ContractCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await interactor.update(state.data.contract!.id, _formattingData(state));

    if (result.isLeft) {
      addSr(ContractCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const ContractCreateSR.successNotify(text: "Toleg uytgedildi"));
      addSr(ContractCreateSR.created(contract: result.right));
    }
  }

  FutureOr<void> _selectedRegion(ContractCreateEventSelectRegion event, Emitter<ContractCreateState> emit) async {
    emit(state.data.copyWith(region: event.region, regions: event.regions));
  }

  Future<void> _selectedDate(ContractCreateEventSetupDate event, Emitter<ContractCreateState> emit) async {
    emit(state.data.copyWith(setupDate: event.date));
  }

  Future<void> _selectedClient(ContractCreateEventSelectClient event, Emitter<ContractCreateState> emit) async {
    emit(state.data.copyWith(client: event.client));
  }

  Future<void> _selectedAdvertiser(ContractCreateEventSelectAdvertiser event, Emitter<ContractCreateState> emit) async {
    emit(state.data.copyWith(advertiser: event.employee));
  }

  Map<String, dynamic> _formattingData(ContractCreateState state) {
    Map<String, dynamic> data = {
      "client_id": state.data.client?.id,
      "region_id": state.data.region?.id,
      "advertiser_id": state.data.advertiser?.id,
      "month_count": state.data.monthCount.text,
      "due_date_on_month": state.data.dueDateOnMonth.text,
      "price_amount": state.data.priceAmount.text,
      "start_contribution": state.data.startContribution.text,
      "setup_date": dateFormatterYyyyMmDd.format(state.data.setupDate),
      "count_filter": state.data.filterCount.text,
    };
    return data;
  }

}
