import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/feature/coal/data/coal_models.dart';

part 'coal_bloc_models.freezed.dart';

@freezed
class CoalEvent with _$CoalEvent {
  const factory CoalEvent.init() = CoalEventInit;
  const factory CoalEvent.filter() = CoalEventFilter;
  const factory CoalEvent.resetFilter() = CoalEventResetFilter;
  const factory CoalEvent.delete({required Coal coal}) = CoalEventDelete;
}

@freezed
class CoalSR with _$CoalSR {
  const factory CoalSR.showDioError({
    required CommonResponseError<DefaultApiError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar,
  }) = _ShowDioErrorSnackbar;

  const factory CoalSR.successNotify({required String text}) = _SuccessNotify;

  const factory CoalSR.delete({required Coal coal}) = _CoalDeleted;
}

@freezed
class CoalState with _$CoalState {
  CoalStateData get data => this as CoalStateData;

  const CoalState._();

  const factory CoalState.empty() = CoalStateEmpty;

  const factory CoalState.data({
    required bool isLoading,
    required List<Filter> filters,
    required List<Coal> coals,
  }) = CoalStateData;
}