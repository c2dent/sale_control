import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/services/settings_service.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/service/domain/service_interactor.dart';
import 'package:hasap_admin/feature/service/presentation/list/bloc/service_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class ServiceBloc extends SrBloc<ServiceEvent, ServiceState, ServiceSR> {
  final ServiceInteractor interactor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;
  final SettingsService settingsService;

  ServiceBloc(
    this._notifyErrorSnackbar,
    this.interactor,
  )   : settingsService = GetIt.instance.get<SettingsService>(),
        super(const ServiceState.empty()) {
    on<ServiceEventInit>(_init);
    on<ServiceEventFilter>(_filter);
    on<ServiceEventResetFilter>(_resetFilter);
    on<ServiceEventDelete>(_delete);
  }

  Future<void> _init(ServiceEventInit event, Emitter<ServiceState> emit) async {

    Map<String, List<CustomFilterWidget>> filters = {};

    final result = await interactor.list();

    if (result.isLeft) {
      addSr(ServiceSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    } else {
      emit(ServiceState.data(
        isLoading: false,
        filters: filters,
        services: result.right,
      ));
    }
  }

  Future<void> _filter(ServiceEventFilter event, Emitter<ServiceState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.list();
    if (result.isLeft) {
      addSr(ServiceSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }
    emit(state.data.copyWith(isLoading: false, services: result.right));
  }

  Future<void> _resetFilter(ServiceEventResetFilter event, Emitter<ServiceState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.list();
    if (result.isLeft) {
      addSr(ServiceSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }
    emit(state.data.copyWith(isLoading: false, services: result.right));
  }

  Future<void> _delete(ServiceEventDelete event, Emitter<ServiceState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.delete(event.service.service);
    if (result.isLeft) {
      addSr(ServiceSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    } else {
      addSr(const ServiceSR.successNotify(text: 'Hyzmat pozuldyy'));
      addSr(ServiceSR.delete(service: event.service));
      emit(state.data.copyWith(isLoading: false));
    }
  }
}
