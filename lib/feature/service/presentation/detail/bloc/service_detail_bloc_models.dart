import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';

part 'service_detail_bloc_models.freezed.dart';

@freezed
class ServiceDetailEvent with _$ServiceDetailEvent {
  const factory ServiceDetailEvent.init({required ServiceTableData service}) = ServiceDetailEventInit;

  const factory ServiceDetailEvent.update() = ServiceDetailEventUpdate;
}

@freezed
class ServiceDetailSR with _$ServiceDetailSR {
  const factory ServiceDetailSR.successNotify({required String text}) = _SuccessNotify;
  const factory ServiceDetailSR.errorNotify({required String text}) = _ErrorNotify;
}

@freezed
class ServiceDetailState with _$ServiceDetailState {
  ServiceDetailStateData get data => this as ServiceDetailStateData;

  const ServiceDetailState._();

  const factory ServiceDetailState.empty() = ServiceDetailEmpty;

  const factory ServiceDetailState.data({
    required bool isLoading,
    required ServiceDetail serviceDetail,
    required ServiceTableData serviceTableData,
  }) = ServiceDetailStateData;
}