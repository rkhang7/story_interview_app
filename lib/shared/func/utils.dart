import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:intl/intl.dart';

class Utils {
  static String convertDateTime(String dateTime) {
    String result = "";
    result = DateFormat('HH:mm:ss dd-MM-yyyy').format(DateTime.parse(dateTime));
    return result;
  }

  static Widget convertHTMLtoWidget(String? content) {
    /// sanitize or query document here
    Widget html = Html(
      data: content,
    );

    return html;
  }
}
