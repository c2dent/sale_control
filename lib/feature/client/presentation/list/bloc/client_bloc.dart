import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/services/settings_service.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/client/domain/client_interactor.dart';
import 'package:injectable/injectable.dart';

import 'client_bloc_models.dart';

@injectable
class ClientBloc extends SrBloc<ClientEvent, ClientState, ClientSR> {
  final ClientInteractor interactor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;
  final SettingsService settingsService;

  ClientBloc(
    this.interactor,
    this._notifyErrorSnackbar,
  )   : settingsService = GetIt.instance.get<SettingsService>(),
        super(const ClientState.empty()) {
    on<ClientEventInit>(_init);
    on<ClientEventFilter>(_filter);
    on<ClientEventResetFilter>(_resetFilter);
    on<ClientEVentDelete>(_delete);
  }

  FutureOr<void> _init(ClientEventInit event, Emitter<ClientState> emit) async {
    User? user = await settingsService.getCurrentUser();

    Map<String, List<CustomFilterWidget>> filters = {};

    final result = await interactor.list();

    if (result.isLeft) {
      addSr(ClientSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    } else {
      emit(ClientState.data(
        isLoading: false,
        user: user,
        filters: filters,
        clients: result.right,
      ));
    }
  }

  FutureOr<void> _resetFilter(ClientEventResetFilter event, Emitter<ClientState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    // for (var item in state.data.filters) {
    //   item.clear();
    // }

    final result = await interactor.list();

    if (result.isLeft) {
      addSr(ClientSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }

    emit(state.data.copyWith(isLoading: false, clients: result.right));
  }

  FutureOr<void> _filter(ClientEventFilter event, Emitter<ClientState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await interactor.list();

    if (result.isLeft) {
      addSr(ClientSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }

    emit(state.data.copyWith(isLoading: false, clients: result.right));
  }

  FutureOr<void> _delete(ClientEVentDelete event, Emitter<ClientState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await interactor.delete(event.client.id);
    if (result.isLeft) {
      emit(state.data.copyWith(isLoading: false));
      addSr(ClientSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    } else {
      addSr(const ClientSR.successNotify(text: "Mushderi pozuldy"));
      addSr(const ClientSR.deleted());
      emit(state.data.copyWith(isLoading: false));
    }
  }
}
