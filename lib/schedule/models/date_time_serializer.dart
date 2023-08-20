import 'package:intl/intl.dart';

abstract class DateTimeSerializer {
  static int toJson(DateTime? dateTime) {
    if (dateTime == null) return 0;
    return dateTime.millisecondsSinceEpoch ~/ 1000;
  }

  static DateTime fromJson(int dateTime) => DateTime.fromMillisecondsSinceEpoch(dateTime);

  static DateTime? fromJsonNullable(int dateTime) {
    if (dateTime == 0) return null;
    return DateTime.fromMillisecondsSinceEpoch(dateTime);
  }

  static String toJsonFormatyyyyMMdd(DateTime dateTime) => DateFormat('yyyy-MM-dd').format(dateTime);

  static DateTime fromJsonFormatyyyyMMdd(String dateTime) {
    var dateTimeSplits = dateTime.split('.');
    dateTimeSplits = [
      dateTimeSplits.first,
      dateTimeSplits[1],
      dateTimeSplits[2].split(' ').first,
      dateTimeSplits[2].split(' ')[1].split(':').first,
      dateTimeSplits[2].split(' ')[1].split(':')[1],
    ];
    final day = int.parse(dateTimeSplits.first);
    final month = int.parse(dateTimeSplits[1]);
    final year = int.parse(dateTimeSplits[2]);
    final hour = int.parse(dateTimeSplits[3]);
    final minute = int.parse(dateTimeSplits[4]);

    return DateTime(year, month, day, hour, minute);
  }
}
