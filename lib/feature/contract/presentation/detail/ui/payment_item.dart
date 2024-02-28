import 'package:flutter/material.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/widgets/utils.dart';

class PaymentItem extends StatelessWidget {
  final PaymentTableData payment;
  final EmployeeTableData? employee;

  const PaymentItem({super.key, required this.payment, required this.employee});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(formattingDate(payment.date), style: theme.textTheme.labelLarge),
                Card(
                  color: theme.colorScheme.primary.withOpacity(0.7),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      child:
                          Text("${formatCurrency(payment.paidAmount)} тмт", style: TextStyle(color: theme.colorScheme.onPrimary, fontWeight: FontWeight.bold))),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.work, size: 18),
                    const SizedBox(width: 3),
                    Text(employee != null ? "${employee?.firstName} ${employee?.lastName}" : "Tapylmady", style: theme.textTheme.titleMedium),
                  ],
                ),
                if (!payment.isSynced) Icon(Icons.sync, color: theme.colorScheme.tertiary)
              ],
            ),
            Row(
              children: [
                Text("Beldik: ", style: theme.textTheme.bodyMedium),
                Expanded(child: Text(payment.comment ?? "-", style: theme.textTheme.bodyMedium)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
