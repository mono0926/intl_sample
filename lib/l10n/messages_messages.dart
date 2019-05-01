// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a messages locale. All the
// messages from the main program should be duplicated here with the same
// function name.

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

// ignore: unnecessary_new
final messages = new MessageLookup();

// ignore: unused_element
final _keepAnalysisHappy = Intl.defaultLocale;

// ignore: non_constant_identifier_names
typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'messages';

  static m0(howMany) => "${Intl.plural(howMany, zero: 'no dog😢', one: 'a dog', other: '${howMany} dogs')}";

  static m1(count) => "フォロワー: ${count}";

  static m2(gender) => "${Intl.gender(gender, female: '私はお腹が空いたわ', male: '僕はお腹が空きました', other: 'はらぺこりん')}";

  static m3(choice) => "{choice,select, }";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "dogsCount" : m0,
    "followers" : m1,
    "hello" : MessageLookupByLibrary.simpleMessage("こんにちは"),
    "hungry" : m2,
    "xxx" : m3
  };
}
