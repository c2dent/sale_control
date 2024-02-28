import 'package:flutter/material.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';

class ServiceItem extends StatelessWidget {
  final ServiceTableData service;
  final EmployeeTableData? employee;

  const ServiceItem({super.key, required this.service, required this.employee});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    (Color, Color) getBgColorAmount(ServiceType type) {
      switch (type.operationType) {
        case 'OUTCOME':
          return (theme.colorScheme.error, theme.colorScheme.onError);
        case 'INCOME':
          return (theme.colorScheme.primary, theme.colorScheme.onPrimary);
        default:
          return (theme.colorScheme.tertiary, theme.colorScheme.onTertiary);
      }
    }

    final amountColors = getBgColorAmount(ServiceType.getServiceTypeFromString(service.type));
    ServiceType serviceType = ServiceType.getServiceTypeFromString(service.type);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(formattingDate(service.date), style: theme.textTheme.bodyLarge),
                Card(
                    color: amountColors.$1,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      child: Text("${formatCurrency(service.amount)} тмт", style: TextStyle(color: amountColors.$2, fontWeight: FontWeight.bold)),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(serviceType.name, style: theme.textTheme.bodyLarge),
                if (!service.isSynced) Icon(Icons.sync, color: theme.colorScheme.tertiary),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.work, size: 18),
                const SizedBox(width: 3),
                Text(employee != null ? "${employee?.firstName} ${employee?.lastName}" : "Tapylmady", style: theme.textTheme.titleMedium),
              ],
            ),
            Row(
              children: [
                Text("Beldik: ${service.comment}")
              ],
            )
          ],
        ),
      ),
    );
  }
}
