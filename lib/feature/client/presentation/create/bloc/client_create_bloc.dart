import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/feature/client/domain/client_interactor.dart';
import 'package:hasap_admin/feature/client/presentation/create/bloc/client_create_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClientCreateBloc extends SrBloc<ClientCreateEvent, ClientCreateState, ClientCreateSR> {
  final ClientInteractor clientInteractor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;

  ClientCreateBloc(this.clientInteractor, this._notifyErrorSnackbar) : super(const ClientCreateState.empty()) {
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

  Map<String, dynamic> _formattingData(ClientCreateState state) {
    Map<String, dynamic> data = {
      "first_name": state.data.firstName.text,
      "last_name": state.data.lastName.text,
      "sur_name": state.data.surName.text,
      "phone": state.data.phone.text,
      "phone2": state.data.phone2.text,
      "description": state.data.description.text,
      "region_id": state.data.region?.id,
    };
    return data;
  }

  FutureOr<void> _create(ClientCreateEventCreate event, Emitter<ClientCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await clientInteractor.createClient(_formattingData(state));

    if (result.isLeft) {
      addSr(ClientCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const ClientCreateSR.successNotify(text: "Mushderi goshuldyy"));
      addSr(ClientCreateSR.created(client: result.right));
    }
  }

  FutureOr<void> _update(ClientCreateEventUpdate event, Emitter<ClientCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await clientInteractor.updateClient(state.data.client!.id, _formattingData(state));

    if (result.isLeft) {
      addSr(ClientCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const ClientCreateSR.successNotify(text: "Mushderi uytgedildi"));
      addSr(ClientCreateSR.created(client: result.right));
    }
  }
}
