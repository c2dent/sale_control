import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/drift_error_handler/drift_error_handler.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/tables/payment_table.dart';
import 'package:hasap_admin/feature/payment/data/payment_models.dart';
import 'package:injectable/injectable.dart';

part 'payment_dao.g.dart';

@injectable
@DriftAccessor(tables: [PaymentTable])
class PaymentDao extends DatabaseAccessor<AppDatabase> with _$PaymentDaoMixin {
  final DriftErrorHandler<DefaultDriftError> _errorHandler = GetIt.instance.get<DriftErrorHandler<DefaultDriftError>>();

  PaymentDao(AppDatabase db) : super(db);

  Future<Either<DriftRequestError<DefaultDriftError>, List<PaymentData>>> getAllPayments() async =>
      await _errorHandler.processRequest(() => (select(paymentTable)
            ..where((tbl) => tbl.isDeleted.equals(false))
            ..orderBy([(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)]))
          .join([
            leftOuterJoin(db.employeeTable, db.employeeTable.id.equalsExp(paymentTable.creatorId), useColumns: true),
            leftOuterJoin(db.contractTable, db.contractTable.id.equalsExp(paymentTable.contractId), useColumns: false),
            leftOuterJoin(db.clientTable, db.clientTable.id.equalsExp(db.contractTable.clientId), useColumns: true),
          ])
          .map((types) => PaymentData(
                client: types.readTable(db.clientTable),
                creator: types.readTable(db.employeeTable),
                payment: types.readTable(db.paymentTable),
              ))
          .get());

  Future<Either<DriftRequestError<DefaultDriftError>, String>> insertPayment(PaymentTableCompanion payment) async =>
      await _errorHandler.processRequest(() async {
        await into(db.paymentTable).insert(payment);
        return payment.id.value;
      });

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updatePayment(PaymentTableCompanion payment) async =>
      await _errorHandler.processRequest(() async {
        bool have = await (select(db.paymentTable)
          ..where((tbl) => tbl.id.equals(payment.id.value)))
            .get()
            .then((value) => value.isNotEmpty);

        if (!have) throw DriftError("Toleg tapylmady");
        return await update(db.paymentTable).replace(payment);
      });

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> isExists(String id) async {
    final result = await _errorHandler.processRequest(() => (select(db.paymentTable)..where((tbl) => tbl.id.equals(id))).get());
    if (result.isLeft) return Either.left(result.left);
    return Either.right(result.right.isNotEmpty);
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deletePayment(String id) async =>
      await _errorHandler.processRequest(() async {
        bool have = await (select(db.paymentTable)
          ..where((tbl) => tbl.id.equals(id)))
            .get()
            .then((value) => value.isNotEmpty);

        if (!have) throw DriftError("Toleg tapylmady");
        String query = "UPDATE payment_table SET is_deleted = ?, is_synced = ? WHERE id = ?";
        await customStatement(query, [true, false, id]);
        return true;
      });

  Future<Either<DriftRequestError<DefaultDriftError>, List<Map<String, dynamic>>>> getUnSyncedData() async {
    return await _errorHandler.processRequest(() async {
      return await executor.runSelect('select * from payment_table where is_synced = false', []);
    });
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> allSynced() async {
    String query = "update payment_table set is_synced = true where is_synced = false";
    return await _errorHandler.processRequest(() async {
      await customStatement(query, []);
      return true;
    });
  }
}
