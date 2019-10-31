// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
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
  String get localeName => 'ja';

  static m0(count) => "フォロワー: ${count}";

  static m1(howMany) => "${Intl.plural(howMany, zero: 'no dog😢', one: 'a dog', other: '${howMany} dogs')}";

  static m2(gender) => "${Intl.gender(gender, female: '私はお腹が空いたわ', male: '僕はお腹が空きました', other: 'はらぺこりん')}";

  static m3(membership) => "${Intl.select(membership, {'normal': '通常会員です', 'premium': 'プレミアム会員です✨✨', })}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "_followers" : m0,
    "dogsCount" : m1,
    "hello" : MessageLookupByLibrary.simpleMessage("こんにちは"),
    "hungry" : m2,
    "memberStatus" : m3
  };
}
