// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ar';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "handle_error_message_cancel":
            MessageLookupByLibrary.simpleMessage("تم إلغاء الطلب"),
        "handle_error_message_connect_time_out":
            MessageLookupByLibrary.simpleMessage(
                "تم فقد الاتصال بالسيرفر بشكل غير متوقع"),
        "handle_error_status_cancel":
            MessageLookupByLibrary.simpleMessage("إلغاء الطلب"),
        "handle_error_status_connect_time_out":
            MessageLookupByLibrary.simpleMessage("خطأ غير متوقع")
      };
}
