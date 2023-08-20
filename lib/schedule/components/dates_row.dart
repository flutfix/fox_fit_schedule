import 'package:flutter/material.dart';
import 'package:fox_fit_schedule/schedule/common/layout.dart';
import 'package:intl/intl.dart';

class DatesRow extends StatelessWidget {
  final DateTime startDate;

  const DatesRow({super.key, required this.startDate});

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 21,
        itemBuilder: (context, i) {
          final dateItem = DateTime(startDate.year, startDate.month, startDate.day - 7 + i);

          return Container(
            width: 140,
            padding: const EdgeInsets.symmetric(vertical: 18),
            color: _dateIsNow(dateItem) ? layout.theme.scheduleBg : null,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: DateFormat('dd', layout.intl.localeName).format(dateItem),
                    style: layout.fonts.styleB12.copyWith(color: layout.theme.primarySchedule),
                  ),
                  TextSpan(
                    text: DateFormat('  MMMM', layout.intl.localeName).format(dateItem).toLowerCase(),
                    style: layout.fonts.styleR12.copyWith(color: layout.theme.text),
                  ),
                  TextSpan(
                    text: DateFormat('  E', layout.intl.localeName).format(dateItem).toUpperCase(),
                    style: layout.fonts.styleR12.copyWith(color: layout.theme.text),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  /// Проверка текущей даты на сегодняшний день.
  bool _dateIsNow(DateTime date) =>
      date.year == DateTime.now().year && date.month == DateTime.now().month && date.day == DateTime.now().day;
}
