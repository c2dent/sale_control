import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';

part 'service_bloc_models.freezed.dart';

@freezed
class ServiceEvent with _$ServiceEvent {
  const factory ServiceEvent.init() = ServiceEventInit;
  const factory ServiceEvent.filter() = ServiceEventFilter;
  const factory ServiceEvent.resetFilter() = ServiceEventResetFilter;
  const factory ServiceEvent.delete({required Service service}) = ServiceEventDelete;
}

@freezed
class ServiceSR with _$ServiceSR {
  const factory ServiceSR.showDioError({
    required CommonResponseError<DefaultApiError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar,
  }) = _ShowDioErrorSnackbar;

  const factory ServiceSR.successNotify({required String text}) = _SuccessNotify;

  const factory ServiceSR.delete({required Service service}) = _ServiceDeleted;
}

@freezed
class ServiceState with _$ServiceState {
  ServiceStateData get data => this as ServiceStateData;

  const ServiceState._();

  const factory ServiceState.empty() = ServiceStateEmpty;

  const factory ServiceState.data({
    required bool isLoading,
    required List<Filter> filters,
    required List<Service> services,
  }) = ServiceStateData;
}