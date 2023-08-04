import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


Future<Map<String, dynamic>?> awaitReturnValueFromAddScreen(BuildContext context, Widget screen) async {
  var result = await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
  return result;
}

String formattingDate(DateTime d) {
  String dateString = "";
  var formatterTime = DateFormat("HH:mm");
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final yesterday = DateTime(now.year, now.month, now.day - 1);
  final dayBeforeYesterday = DateTime(now.year, now.month, now.day - 2);
  final tomorrow = DateTime(now.year, now.month, now.day + 1);
  final dayAfterTomorrow = DateTime(now.year, now.month, now.day + 2);

  if (DateUtils.dateOnly(d) == DateUtils.dateOnly(today)) {
    dateString = "Su gun ${formatterTime.format(d)}";
  } else if (DateUtils.dateOnly(d) == DateUtils.dateOnly(yesterday)) {
    dateString = "Duyn ${formatterTime.format(d)}";
  } else if (DateUtils.dateOnly(d) == DateUtils.dateOnly(tomorrow)) {
    dateString = "Ertir ${formatterTime.format(d)}";
  } else if (DateUtils.dateOnly(d) == DateUtils.dateOnly(dayAfterTomorrow)) {
    dateString = "Birun ${formatterTime.format(d)}";
  } else if (DateUtils.dateOnly(d) == DateUtils.dateOnly(dayBeforeYesterday)) {
    dateString = "Ongun ${formatterTime.format(d)}";
  } else {
    if (now.year == d.year) {
      dateString = DateFormat("d MMMM HH:mm").format(d);
    } else {
      dateString = DateFormat("dd.MM.yy HH:mm").format(d);
    }
  }

  return dateString;
}

final DateFormat dateFormatter = DateFormat('dd-MM-yyyy');
final DateFormat dateFormatterYyyyMmDd = DateFormat('yyyy-MM-dd');

void showEditDeletePopup(BuildContext context, Offset position,
    {required void Function() edit, required void Function() delete}) async {
  final RenderObject? overlay = Overlay.of(context).context.findRenderObject();

  final result = await showMenu(
      context: context,
      position: RelativeRect.fromRect(Rect.fromLTWH(position.dx, position.dy, 30, 30),
          Rect.fromLTWH(0, 0, overlay!.paintBounds.size.width, overlay.paintBounds.size.height)),
      items: [
        const PopupMenuItem(
          value: 'edit',
          child: Text('Редактировать'),
        ),
        const PopupMenuItem(
          value: 'delete',
          child: Text('Удалить'),
        ),
      ]);

  switch (result) {
    case 'edit':
      edit();
      break;
    case 'delete':
      delete();
      break;
  }
}

void showContextMenu(BuildContext context, Offset position,
    {required void Function() edit, required void Function() delete}) async {
  final RenderObject? overlay = Overlay.of(context).context.findRenderObject();

  final result = await showMenu(
      context: context,
      position: RelativeRect.fromRect(Rect.fromLTWH(position.dx, position.dy, 30, 30),
          Rect.fromLTWH(0, 0, overlay!.paintBounds.size.width, overlay.paintBounds.size.height)),
      items: [
        const PopupMenuItem(
          value: 'edit',
          child: Text('Uytgetmek'),
        ),
        const PopupMenuItem(
          value: 'delete',
          child: Text('Pozmak'),
        ),
      ]);

  switch (result) {
    case 'edit':
      edit();
      break;
    case 'delete':
      delete();
      break;
  }
}

