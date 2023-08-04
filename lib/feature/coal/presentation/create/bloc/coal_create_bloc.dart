import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/coal/domain/coal_interactor.dart';
import 'package:hasap_admin/feature/coal/presentation/create/bloc/coal_create_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class CoalCreateBloc extends SrBloc<CoalCreateEvent, CoalCreateState, CoalCreateSR> {
  final CoalInteractor interactor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;

  CoalCreateBloc(this.interactor, this._notifyErrorSnackbar): super(const CoalCreateState.empty()) {
    on<CoalCreateEventInit>(_init);
    on<CoalCreateEventCreate>(_create);
    on<CoalCreateEventUpdate>(_update);
    on<CoalCreateEventSelectDate>(_selectedDate);
    on<CoalCreateEventSelectContractor>(_selectedContractor);
  }

  Future<void> _init(CoalCreateEventInit event, Emitter<CoalCreateState> emit) async {
    emit(CoalCreateState.data(
        isLoading: false,
        formKey: GlobalKey<FormState>(),
        date: event.coal?.date ?? DateTime.now(),
        contract: event.coal?.contract,
        coal: event.coal)
    );
  }

  Future<void> _create(CoalCreateEventCreate event, Emitter<CoalCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.create(_formattingData(state));

    if (result.isLeft) {
      addSr(CoalCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const CoalCreateSR.successNotify(text: "Komur hyzmaty goshuldyy"));
      addSr(CoalCreateSR.created(coal: result.right));
    }
  }

  Future<void> _update(CoalCreateEventUpdate event, Emitter<CoalCreateState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await interactor.update(state.data.contract!.id, _formattingData(state));

    if (result.isLeft) {
      addSr(CoalCreateSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      emit(state.data.copyWith(isLoading: false));
      addSr(const CoalCreateSR.successNotify(text: "Komur hyzmaty uytgedildi"));
      addSr(CoalCreateSR.created(coal: result.right));
    }
  }

  Future<void> _selectedDate(CoalCreateEventSelectDate event, Emitter<CoalCreateState> emit) async {
    emit(state.data.copyWith(date: event.date));
  }

  Future<void> _selectedContractor(CoalCreateEventSelectContractor event, Emitter<CoalCreateState> emit) async {
    emit(state.data.copyWith(contract: event.contract));
  }

  Map<String, dynamic> _formattingData(CoalCreateState state) {
    Map<String, dynamic> data = {
      "contract_id": state.data.contract?.id,
      "date": dateFormatterYyyyMmDd.format(state.data.date),
    };
    return data;
  }
}