import 'dart:convert';

import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

final _timeFormat = DateFormat('HH:mm:ss.SSS');

/// Outputs simpler log messages:
/// ```
/// [E] Log message  ERROR: Error info
/// ```
class SimplerPrinter extends LogPrinter {
  static final levelPrefixes = {
    Level.verbose: '[V]',
    Level.debug: '[D]',
    Level.info: '[I]',
    Level.warning: '[W]',
    Level.error: '[E]',
    Level.wtf: '[WTF]',
  };

  @override
  List<String> log(LogEvent event) {
    final messageStr = _stringifyMessage(event.message);
    final errorStr = event.error != null ? '  ERROR: ${event.error}' : '';
    final timeStr = _timeFormat.format(DateTime.now());
    return ['${levelPrefixes[event.level]} $timeStr $messageStr$errorStr'];
  }

  String _stringifyMessage(dynamic message) {
    final finalMessage = message is Function ? message() : message;
    if (finalMessage is Map || finalMessage is Iterable) {
      var encoder = JsonEncoder.withIndent(null);
      return encoder.convert(finalMessage);
    } else {
      return finalMessage.toString();
    }
  }
}
