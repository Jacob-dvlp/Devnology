import 'package:intl/intl.dart';

class FormatDoubleToCurrency {
  static String convertDouble(amountToConvert) {
    final formatter = NumberFormat.currency(
      decimalDigits: 2,
      symbol: '\$ ',
    );
    final formattedValue = formatter.format(amountToConvert);

    return formattedValue;
  }
}
