import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/service/domain/service_interactor.dart';
import 'package:hasap_admin/feature/service/presentation/create/bloc/service_create_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class ServiceCreateBloc extends SrBloc<ServiceCreateEvent, ServiceCreateState, ServiceCreateSR> {
  final ServiceInteractor interactor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;

  ServiceCreateBloc(this.interactor, this._notifyErrorSnackbar): super(const ServiceCreateState.empty()) {
    on<ServiceCreateEventInit>(_init);
    on<ServiceCreateEventCreate>(_create);
    on<ServiceCreateEventUpdate>(_update);
    on<ServiceCreateEventSelectDate>(_selectedDate);
    on<ServiceCreateEventSelectContractor>(_selectedContractor);
    on<ServiceCreateEventSelectType>(_selectType);
  }

  Future<void> _init(ServiceCreateEventInit event, Emitter<ServiceCreateState> emit) async {
    emit(ServiceCreateState.data(
        isLoading: false,
        formKey: GlobalKey<FormState>(),
        date: event.service?.date ?? DateTime.now(),
        contract: event.service?.contract,
        comment: TextEditingController(text: event.service?.comment),
        amount: TextEditingController(text: event.service?.amount.toString() ?? ""),
        type: event.service?.type,
        service: event.service)
    );
  }

  Future<void> _create(ServiceCreateEventCreate event, Emitter<ServiceCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.create(_formattingData(state));

    if (result.isLeft) {
      addSr(ServiceCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const ServiceCreateSR.successNotify(text: "Komur hyzmaty goshuldyy"));
      addSr(ServiceCreateSR.created(service: result.right));
    }
  }

  Future<void> _update(ServiceCreateEventUpdate event, Emitter<ServiceCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await interactor.update(state.data.service!.id, _formattingData(state));

    if (result.isLeft) {
      addSr(ServiceCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const ServiceCreateSR.successNotify(text: "Komur hyzmaty uytgedildi"));
      addSr(ServiceCreateSR.created(service: result.right));
    }
  }

  Future<void> _selectedDate(ServiceCreateEventSelectDate event, Emitter<ServiceCreateState> emit) async {
    emit(state.data.copyWith(date: event.date));
  }

  Future<void> _selectedContractor(ServiceCreateEventSelectContractor event, Emitter<ServiceCreateState> emit) async {
    emit(state.data.copyWith(contract: event.contract));
  }

  Future<void> _selectType(ServiceCreateEventSelectType event, Emitter<ServiceCreateState> emit) async {
    emit(state.data.copyWith(type: event.type));
  }

  Map<String, dynamic> _formattingData(ServiceCreateState state) {
    Map<String, dynamic> data = {
      "contract_id": state.data.contract?.id,
      "amount": state.data.amount.text,
      "comment": state.data.comment.text,
      "type": state.data.type?.value,
      "date": dateFormatterYyyyMmDd.format(state.data.date),
    };
    return data;
  }
}