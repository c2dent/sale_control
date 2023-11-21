import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/mappers/client_mapper.dart';
import 'package:hasap_admin/feature/client/domain/client_interactor.dart';
import 'package:hasap_admin/feature/client/presentation/create/bloc/client_create_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClientCreateBloc extends SrBloc<ClientCreateEvent, ClientCreateState, ClientCreateSR> {
  final ClientInteractor clientInteractor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;
  final KeyValueStore _keyValueStore;

  ClientCreateBloc(this.clientInteractor, this._notifyErrorSnackbar, this._keyValueStore) : super(const ClientCreateState.empty()) {
    on<ClientCreateEventInit>(_init);
    on<ClientCreateEventCreate>(_create);
    on<ClientCreateEventUpdate>(_update);
    on<ClientCreateEventSelectRegion>(_selectedRegion);
  }

  FutureOr<void> _init(ClientCreateEventInit event, Emitter<ClientCreateState> emit) async {
    emit(ClientCreateState.data(
      isLoading: false,
      formKey: GlobalKey<FormState>(),
      firstName: TextEditingController(text: event.client?.firstName),
      lastName: TextEditingController(text: event.client?.lastName),
      surName: TextEditingController(text: event.client?.surName),
      description: TextEditingController(text: event.client?.description),
      phone: TextEditingController(text: event.client?.phone),
      phone2: TextEditingController(text: event.client?.phone2),
      region: event.client?.region,
      regions: [event.client?.region, null, null, null],
      client: event.client,
    ));
  }

  FutureOr<void> _selectedRegion(ClientCreateEventSelectRegion event, Emitter<ClientCreateState> emit) async {
    emit(state.data.copyWith(region: event.region, regions: event.regions));
  }

  FutureOr<void> _create(ClientCreateEventCreate event, Emitter<ClientCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await clientInteractor.createClientDb(await ClientMapper.fromMap(state.data, true, _keyValueStore));

    if (result.isLeft) {
      addSr(ClientCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const ClientCreateSR.successNotify(text: "Mushderi goshuldyy"));
      addSr(const ClientCreateSR.created());
    }
  }

  FutureOr<void> _update(ClientCreateEventUpdate event, Emitter<ClientCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await clientInteractor.updateClientDb(await ClientMapper.fromMap(state.data, false, _keyValueStore));

    if (result.isLeft) {
      addSr(ClientCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const ClientCreateSR.successNotify(text: "Mushderi uytgedildi"));
      addSr(const ClientCreateSR.created());
    }
  }
}
