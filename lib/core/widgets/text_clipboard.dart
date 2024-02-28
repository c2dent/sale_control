import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';

class ClipboardText extends StatelessWidget {
  final String text;
  final String value;

  const ClipboardText({super.key, required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return InkWell(
      onTap: () async {
        await Clipboard.setData(ClipboardData(text: value));
        SuccessSnackbar.show(context: context, text: 'Telefon nomer yada goshuldy');
      },
      child: Text(text, style: theme.textTheme.titleMedium?.copyWith(color: theme.colorScheme.tertiary)),
    );
  }

}