import 'package:drift/drift.dart';
import 'package:hasap_admin/core/models/sync/payment_sync.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/services/settings_service.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/payment/presentation/create/bloc/payment_create_bloc_models.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@injectable
class PaymentMapper {
  final SettingsService _settingsService;

  PaymentMapper(this._settingsService);

  PaymentTableCompanion fromPaymentSync(PaymentSync paymentSync) {
    return PaymentTableCompanion(
      id: Value(paymentSync.id),
      contractId: Value(paymentSync.contractId),
      officeId: Value(paymentSync.officeId),
      operationId: Value(paymentSync.operationId),
      creatorId: Value(paymentSync.creatorId),
      paidAmount: Value(paymentSync.paidAmount),
      date: Value(paymentSync.date),
      comment: Value(paymentSync.comment),
      modifiedAt: Value(paymentSync.modifiedAt),
      createdAt: Value(paymentSync.createdAt),
      isDeleted: Value(paymentSync.isDeleted),
      isSynced: const Value(true),
    );
  }

  Future<PaymentTableCompanion> fromPaymentCreateState(PaymentCreateState state, bool forCreate) async {
    var uuid = const Uuid();
    User? user = await _settingsService.getCurrentUser();

    return PaymentTableCompanion(
      id: Value(forCreate ? uuid.v4() : state.data.payment!.payment.id),
      date: Value(state.data.date),
      comment: Value(state.data.comment.text),
      contractId: Value(state.data.contract!.contract.id),
      createdAt: Value(forCreate ? DateTime.now() : state.data.payment!.payment.createdAt),
      paidAmount: Value(int.tryParse(state.data.amount.text) ?? 0),
      modifiedAt: Value(DateTime.now()),
      isSynced: const Value(false),
      isDeleted: const Value(false),
      operationId: Value(forCreate ? "" : state.data.payment!.payment.operationId),
      creatorId: Value(forCreate ? user?.employee.id : state.data.payment!.creator.id),
      officeId: Value(forCreate ? user!.office.id : state.data.payment!.payment.officeId),
    );
  }

  PaymentTableCompanion fromContractCompanion(ContractTableCompanion companion) {
    var uuid = const Uuid();

    return PaymentTableCompanion(
      id: Value(uuid.v4()),
      date: companion.setupDate,
      operationId: const Value(""),
      paidAmount: companion.paidAmount,
      contractId: companion.id,
      officeId: companion.officeId,
      creatorId: companion.creatorId,
      isDeleted: companion.isDeleted,
      isSynced: companion.isSynced,
      comment: const Value("Birinji toleg"),
      modifiedAt: companion.modifiedAt,
      createdAt: companion.createdAt,
    );
  }
}
