import 'package:intl/intl.dart';

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime? other) {
    return year == other?.year && month == other?.month && day == other?.day;
  }

  String get messageHeaderTime {
    if (isSameDate(DateTime.now())) {
      return "Today";
    } else {
      var inputFormat = DateFormat.yMd();
      var dateFormat = inputFormat.format(this);
      return dateFormat;
    }
  }

  String get messageTime {
    var inputFormat = DateFormat.Hm();
    var dateFormat = inputFormat.format(this);
    return dateFormat;
  }

  String get chatTime {
    if (isSameDate(DateTime.now())) {
      var inputFormat = DateFormat.Hm();
      var dateFormat = inputFormat.format(this);
      return dateFormat;
    } else {
      var inputFormat = DateFormat.yMd();
      var dateFormat = inputFormat.format(this);
      return dateFormat;
    }
  }
}
