import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/feature/contract/domain/contract_interactor.dart';
import 'package:hasap_admin/feature/contract/presentation/detail/bloc/contract_detail_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class ContractDetailBloc extends SrBloc<ContractDetailEvent, ContractDetailState, ContractDetailSR> {
  final ContractInteractor interactor;

  ContractDetailBloc(this.interactor) : super(const ContractDetailState.empty()) {
    on<ContractDetailEventInit>(_init);
    on<ContractDetailEventUpdate>(_update);
    on<ContractDetailEventError>(_error);
  }

  Future<void> _init(ContractDetailEventInit event, Emitter<ContractDetailState> emit) async {
    final result = await interactor.detail(event.contract.id);
    if (result.isLeft) {
      addSr(ContractDetailSR.errorNotify(text: result.left.safeCustom!.error));
    } else {
      emit(ContractDetailState.data(isLoading: false, contract: result.right, contractTableData: event.contract));
    }
  }

  Future<void> _update(ContractDetailEventUpdate event, Emitter<ContractDetailState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.detail(state.data.contract.contract.id);
    if (result.isLeft) {
      addSr(ContractDetailSR.errorNotify(text: result.left.safeCustom!.error));
    } else {
      emit(state.data.copyWith(isLoading: false, contract: result.right));
    }
  }

  Future<void> _error(ContractDetailEventError event, Emitter<ContractDetailState> emit) async {
    addSr(ContractDetailSR.errorNotify(text: event.error));
  }
}
