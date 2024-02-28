import 'package:flutter/material.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';

Future<String?> selectPhoneNumber(BuildContext context, ClientTableData client) async {
  final result = await showModalBottomSheet<String>(
    context: context,
    builder: (BuildContext context) {
      ThemeData theme = Theme.of(context);

      return SizedBox(
        height: 150,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Nomeri sayla:', style: theme.textTheme.titleLarge),
              TextButton(
                child: Text("+993 ${client.phone}", style: theme.textTheme.bodyLarge?.copyWith(color: theme.colorScheme.tertiary)),
                onPressed: () => Navigator.pop(context, client.phone),
              ),
              TextButton(
                child: Text("+993 ${client.phone2!}", style: theme.textTheme.bodyLarge?.copyWith(color: theme.colorScheme.tertiary)),
                onPressed: () => Navigator.pop(context, client.phone2!),
              ),
            ],
          ),
        ),
      );
    },
  );
  return result;
}
