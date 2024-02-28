import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';

part 'profile_bloc_models.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.init() = ProfileEventInit;
  const factory ProfileEvent.logout() = ProfileEventLogout;
  const factory ProfileEvent.recalculateBalance() = ProfileEventRecalculateBalance;
  const factory ProfileEvent.synchronize() = ProfileEventSynchronize;
}

@freezed
class ProfileSR with _$ProfileSR {
  const factory ProfileSR.showDioError({
    required CommonResponseError<DefaultApiError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar,
  }) = _ShowDioErrorSnackbar;

  const factory ProfileSR.successNotify({required String text}) = _SuccessNotify;
  const factory ProfileSR.errorNotify({required String text}) = _ErrorNotify;
  const factory ProfileSR.logout() = _Logout;
}

@freezed
class ProfileState with _$ProfileState {
  ProfileStateData get data => this as ProfileStateData;

  const ProfileState._();

  const factory ProfileState.empty() = ClientStateEmpty;

  const factory ProfileState.data({
    required bool isLoading,
    required bool recalculateBalanceLoading,
    required User? user,
    required OfficeTableData office,
    required String syncStatus,
    required bool syncLoading,
  }) = ProfileStateData;
}