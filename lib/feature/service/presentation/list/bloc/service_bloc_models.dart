import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';

part 'service_bloc_models.freezed.dart';

@freezed
class ServiceEvent with _$ServiceEvent {
  const factory ServiceEvent.init() = ServiceEventInit;
  const factory ServiceEvent.filter() = ServiceEventFilter;
  const factory ServiceEvent.resetFilter() = ServiceEventResetFilter;
  const factory ServiceEvent.delete({required ServiceData service}) = ServiceEventDelete;
}

@freezed
class ServiceSR with _$ServiceSR {
  const factory ServiceSR.showDioError({
    required DriftRequestError<DefaultDriftError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar,
  }) = _ShowDioErrorSnackbar;

  const factory ServiceSR.successNotify({required String text}) = _SuccessNotify;

  const factory ServiceSR.delete({required ServiceData service}) = _ServiceDeleted;
}

@freezed
class ServiceState with _$ServiceState {
  ServiceStateData get data => this as ServiceStateData;

  const ServiceState._();

  const factory ServiceState.empty() = ServiceStateEmpty;

  const factory ServiceState.data({
    required bool isLoading,
    required Map<String, List<CustomFilterWidget>> filters,
    required List<ServiceData> services,
  }) = ServiceStateData;
}