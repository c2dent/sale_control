import 'package:flutter/material.dart';

class BadgeButton extends StatelessWidget {
  final String text;
  final void Function() onTap;

  const BadgeButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Badge(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          largeSize: 30,
          label: Text(text, style: theme.textTheme.titleMedium?.copyWith(color: theme.colorScheme.onPrimary)),
          backgroundColor: theme.colorScheme.primary),
    );
  }
}
