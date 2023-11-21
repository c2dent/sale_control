import 'package:flutter/material.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';

class CustomProgressBar extends StatelessWidget {
  final double progress; // Прогресс в долях (от 0.0 до 1.0)

  const CustomProgressBar({Key? key, required this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.of(context);

    return Container(
      height: 10, // Высота линии
      decoration: BoxDecoration(
        color: theme.colorTheme.error, // Фоновый красный цвет
        borderRadius: BorderRadius.circular(5), // Скругление углов
      ),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * progress,
            decoration: BoxDecoration(
              color: theme.colorTheme.success, // Цвет пройденной части линии
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Center(
            child: Text(
              '${(progress * 100).toInt()}%', // Отображение процента
              style: const TextStyle(color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
