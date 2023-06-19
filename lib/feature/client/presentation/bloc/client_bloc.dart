import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/models/area.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/core/models/locality.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/feature/client/domain/client_interactor.dart';
import 'package:hasap_admin/feature/client/presentation/bloc/client_bloc_models.dart';
import 'package:hasap_admin/feature/client/presentation/ui/dropdowns/area.dart';
import 'package:hasap_admin/feature/client/presentation/ui/dropdowns/locality.dart';
import 'package:hasap_admin/feature/client/presentation/ui/dropdowns/region.dart';
import 'package:hasap_admin/feature/client/presentation/ui/search_filter.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClientBloc extends SrBloc<ClientEvent, ClientState, ClientSR> {
  final ClientInteractor clientInteractor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;

  ClientBloc(
      this.clientInteractor,
      this._notifyErrorSnackbar,
  ) : super(const ClientState.empty()) {
    on<ClientEventInit>(_init);
    on<ClientEventFilter>(_filter);
    on<ClientEventResetFilter>(_resetFilter);
  }

  FutureOr<void> _init(ClientEventInit event, Emitter<ClientState> emit) async {

    List<Filter> filters = [
      Filter<Region>(
        parameterName: 'region',
        widget: RegionDropdown(bloc: this, onChange: (Region? value) {}),
        parameterValue: (dynamic region) => region.id.toString(),
      ),
      Filter<Area>(
        parameterName: 'area',
        widget: AreaDropdown(bloc: this, onChange: (Area? value) {}),
        parameterValue: (dynamic area) => area.id.toString(),
      ),
      Filter<Locality>(
          parameterName: 'address',
          widget: LocalityDropdown(bloc: this, onChange: (Locality? locality) {}),
          parameterValue: (dynamic locality) => locality.id.toString(),
      ),
      Filter<String>(
        parameterName: 'name',
        widget: SearchInput(bloc: this, onChange: (String? locality) {}),
        parameterValue: (dynamic string) => string,
      ),
    ];

    final result = await clientInteractor.getClients(filters: filters);

    if (result.isLeft) {
      addSr(ClientSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    } else {
      emit(
        ClientState.data(isLoading: false, filters: filters, clients: result.right)
      );
    }
  }

  FutureOr<void> _resetFilter(ClientEventResetFilter event, Emitter<ClientState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    for (var item in state.data.filters) {
      item.clear();
    }

    final result = await clientInteractor.getClients(filters: state.data.filters);

    if (result.isLeft) {
      addSr(ClientSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }

    emit(state.data.copyWith(isLoading: false, clients: result.right));
  }

  FutureOr<void> _filter(ClientEventFilter event, Emitter<ClientState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await clientInteractor.getClients(filters: state.data.filters);

    if (result.isLeft) {
      addSr(ClientSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }

    emit(state.data.copyWith(isLoading: false, clients: result.right));
  }
}
