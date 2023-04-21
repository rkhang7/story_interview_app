import 'package:intl/intl.dart';

class Utils {
  static String convertDateTime(String dateTime) {
    String result = "";
    result = DateFormat('HH:mm:ss dd-MM-yyyy').format(DateTime.parse(dateTime));
    return result;
  }
}
