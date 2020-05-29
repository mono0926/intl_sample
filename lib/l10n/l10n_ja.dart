
// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: unnecessary_brace_in_string_interps

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get hello => 'こんにちは';

  @override
  String helloWorldOn(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'Hello World on ${dateString}';
  }

  @override
  String followers(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    return 'フォロワー: ${countString}';
  }

  @override
  String dogsCount(int howMany) {
    return intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      zero: 'no dog😢',
      one: 'a dog',
      other: '${howMany} dogs',
    );
  }

  @override
  String hungry(Object gender) {
    return '{gender,select, female{私はお腹が空いたわ}male{僕はお腹が空きました}other{はらぺこりん}}';
  }

  @override
  String memberStatus(Object membership) {
    return '{membership,select, normal{通常会員です}premium{プレミアム会員です✨✨}}';
  }
}
