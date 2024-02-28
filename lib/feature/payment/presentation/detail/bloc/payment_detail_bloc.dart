import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/feature/payment/domain/payment_interactor.dart';
import 'package:hasap_admin/feature/payment/presentation/detail/bloc/payment_detail_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class PaymentDetailBloc extends SrBloc<PaymentDetailEvent, PaymentDetailState, PaymentDetailSR> {
  final PaymentInteractor interactor;

  PaymentDetailBloc(this.interactor) : super(const PaymentDetailState.empty()) {
    on<PaymentDetailEventInit>(_init);
    on<PaymentDetailEventUpdate>(_update);
  }

  Future<void> _init(PaymentDetailEventInit event, Emitter<PaymentDetailState> emit) async {
    final result = await interactor.detail(event.payment.id);
    if (result.isLeft) {
      addSr(PaymentDetailSR.errorNotify(text: result.left.safeCustom!.error));
    } else {
      emit(PaymentDetailState.data(isLoading: false, paymentDetail: result.right, paymentTableData: event.payment));
    }
  }

  Future<void> _update(PaymentDetailEventUpdate event, Emitter<PaymentDetailState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.detail(state.data.paymentTableData.id);
    if (result.isLeft) {
      addSr(PaymentDetailSR.errorNotify(text: result.left.safeCustom!.error));
    } else {
      emit(state.data.copyWith(isLoading: false, paymentDetail: result.right));
    }
  }
}
