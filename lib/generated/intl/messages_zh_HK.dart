// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_HK locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh_HK';

  static m0(page) => "跳轉到 ${page} 頁面";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "DarkMode" : MessageLookupByLibrary.simpleMessage("暗黑模式"),
    "Demo" : MessageLookupByLibrary.simpleMessage("示例"),
    "FollowSystem" : MessageLookupByLibrary.simpleMessage("跟隨系統"),
    "Home" : MessageLookupByLibrary.simpleMessage("首頁"),
    "LightMode" : MessageLookupByLibrary.simpleMessage("明亮模式"),
    "My" : MessageLookupByLibrary.simpleMessage("我的"),
    "Setting" : MessageLookupByLibrary.simpleMessage("設置"),
    "Theme" : MessageLookupByLibrary.simpleMessage("主題"),
    "jumpDemoPage" : m0,
    "mockRequest" : MessageLookupByLibrary.simpleMessage("模擬請求"),
    "multiLanguage" : MessageLookupByLibrary.simpleMessage("多語言")
  };
}
