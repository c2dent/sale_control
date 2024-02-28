import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/feature/service/domain/service_interactor.dart';
import 'package:hasap_admin/feature/service/presentation/detail/bloc/service_detail_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class ServiceDetailBloc extends SrBloc<ServiceDetailEvent, ServiceDetailState, ServiceDetailSR> {
  final ServiceInteractor interactor;

  ServiceDetailBloc(this.interactor) : super(const ServiceDetailState.empty()) {
    on<ServiceDetailEventInit>(_init);
    on<ServiceDetailEventUpdate>(_update);
  }

  Future<void> _init(ServiceDetailEventInit event, Emitter<ServiceDetailState> emit) async {
    final result = await interactor.detail(event.service.id);
    if (result.isLeft) {
      addSr(ServiceDetailSR.errorNotify(text: result.left.safeCustom!.error));
    } else {
      emit(ServiceDetailState.data(isLoading: false, serviceDetail: result.right, serviceTableData: event.service));
    }
  }

  Future<void> _update(ServiceDetailEventUpdate event, Emitter<ServiceDetailState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.detail(state.data.serviceDetail.service.id);
    if (result.isLeft) {
      addSr(ServiceDetailSR.errorNotify(text: result.left.safeCustom!.error));
    } else {
      emit(state.data.copyWith(isLoading: false, serviceDetail: result.right));
    }
  }
}
