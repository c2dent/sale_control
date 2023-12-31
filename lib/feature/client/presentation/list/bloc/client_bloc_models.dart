import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';

part 'client_bloc_models.freezed.dart';

@freezed
class ClientEvent with _$ClientEvent {
  const factory ClientEvent.init() = ClientEventInit;

  const factory ClientEvent.filter() = ClientEventFilter;

  const factory ClientEvent.resetFilter() = ClientEventResetFilter;

  const factory ClientEvent.delete({required Client client}) = ClientEVentDelete;
}

@freezed
class ClientSR with _$ClientSR {
  const factory ClientSR.showDioError({
    required DriftRequestError<DefaultDriftError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar,
  }) = _ShowDioErrorSnackbar;

  const factory ClientSR.deleted() = _ClientDeleted;

  const factory ClientSR.successNotify({required String text}) = _SuccessNotify;
}

@freezed
class ClientState with _$ClientState {
  ClientStateData get data => this as ClientStateData;

  const ClientState._();

  const factory ClientState.empty() = ClientStateEmpty;

  const factory ClientState.data({
    required bool isLoading,
    required User? user,
    required Map<String, List<CustomFilterWidget>> filters,
    required List<Client> clients,
  }) = ClientStateData;
}