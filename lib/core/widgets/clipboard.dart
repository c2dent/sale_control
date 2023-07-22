import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ClipboardWidget extends StatelessWidget {
  final String titleText;
  final String copyText;
  final Color? color;

  const ClipboardWidget({super.key, required this.titleText, required this.copyText, this.color});

  @override
  Widget build(BuildContext context) {
    String copyT = copyText.replaceFirst('.', ',');
    return Row(
      children: [
        InkWell(
          child: Text(titleText, style: TextStyle(color: color)),
          onTap: () async {
            await Clipboard.setData(ClipboardData(text: copyT));
            ElegantNotification.success(
              width: 360,
              notificationPosition: NotificationPosition.topLeft,
              animation: AnimationType.fromTop,
              title: const Text("Скопировано в буффер обмену"),
              description: Text(copyT),
            ).show(context);
          },
        )
      ],
    );
  }
}
