import 'package:flutter/material.dart';
import 'package:fox_fit_schedule/schedule/common/layout.dart';
import 'package:intl/intl.dart';

class Timelapse extends StatelessWidget {
  final ScrollController mainController;
  final ScrollController attachedController;

  const Timelapse({
    super.key,
    required this.mainController,
    required this.attachedController,
  });

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: 61),
      child: SizedBox(
        width: 41.5,
        height: layout.height - 217,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: NotificationListener<ScrollNotification>(
            onNotification: _onScroll,
            child: SizedBox(
              height: 3345,
              child: ListView.separated(
                controller: mainController,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemCount: 25,
                separatorBuilder: (_, i) => _buildSeparatedItem(layout, i == 23),
                itemBuilder: (context, i) {
                  final dateNow = DateTime.now();
                  final date = DateTime(dateNow.year, dateNow.month, dateNow.day, i, 0);

                  return i != 24 ? _buildTimeRow(layout, date) : const SizedBox();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Передача скролла привязанному контроллеру для одновременного скролла.
  bool _onScroll(ScrollNotification notification) {
    attachedController.jumpTo(notification.metrics.pixels);

    return true;
  }

  /// Вёрстка времени.
  Widget _buildTimeRow(Layout layout, DateTime date) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          DateFormat('HH:mm').format(date),
          style: layout.fonts.styleM10.copyWith(color: layout.theme.text),
        ),
        const SizedBox(width: 6.5),
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: layout.theme.primarySchedule,
            borderRadius: BorderRadius.circular(90),
          ),
        ),
      ],
    );
  }

  Widget _buildDivider(Layout layout) {
    return Container(
      width: 1,
      height: 2,
      margin: const EdgeInsets.symmetric(vertical: 2),
      color: layout.theme.dividerTimelapse,
    );
  }

  Widget _buildSeparatedItem(Layout layout, bool isLast) {
    return Padding(
      padding: const EdgeInsets.only(right: 2.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ...List.generate(isLast ? 18 : 21, (_) => _buildDivider(layout)),
          if (isLast) const SizedBox(height: 3),
        ],
      ),
    );
  }
}
