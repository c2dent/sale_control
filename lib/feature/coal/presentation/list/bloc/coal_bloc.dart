import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/feature/coal/domain/coal_interactor.dart';
import 'package:hasap_admin/feature/coal/presentation/list/bloc/coal_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class CoalBloc extends SrBloc<CoalEvent, CoalState, CoalSR> {
  final CoalInteractor interactor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;

  CoalBloc(
      this._notifyErrorSnackbar,
      this.interactor,
      ) : super(const CoalState.empty()) {
    on<CoalEventInit>(_init);
    on<CoalEventFilter>(_filter);
    on<CoalEventResetFilter>(_resetFilter);
    on<CoalEventDelete>(_delete);
  }

  Future<void> _init(CoalEventInit event, Emitter<CoalState> emit) async {
    List<Filter> filters = [];

    final result = await interactor.list(filters: filters);

    if (result.isLeft) {
      addSr(CoalSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    } else {
      emit(
        CoalState.data(
            isLoading: false,
            filters: filters,
            coals: result.right,
        )
      );
    }
  }

  Future<void> _filter(CoalEventFilter event, Emitter<CoalState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.list(filters: state.data.filters);
    if (result.isLeft) {
      addSr(CoalSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }
    emit(state.data.copyWith(isLoading: false, coals: result.right));
  }

  Future<void> _resetFilter(CoalEventResetFilter event, Emitter<CoalState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.list(filters: []);
    if (result.isLeft) {
      addSr(CoalSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }
    emit(state.data.copyWith(isLoading: false, coals: result.right));
  }

  Future<void> _delete(CoalEventDelete event, Emitter<CoalState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.delete(event.coal.id);
    if (result.isLeft) {
      addSr(CoalSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    } else {
      addSr(const CoalSR.successNotify(text: 'Komur hyzmaty pozuldyy'));
      addSr(CoalSR.delete(coal: event.coal));
      emit(state.data.copyWith(isLoading: false));
    }
  }
}