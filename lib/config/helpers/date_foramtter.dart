import 'package:intl/intl.dart';

class DateFormatter {
  String getDateRepresentation(DateTime dateTime) {
    return '${DateFormat('EEEE, MMMM, d/y').format(dateTime)}';
  }
}
