import 'package:intl/intl.dart';

mixin Messages {
  String get hello => Intl.message(
        'こんにちは',
        name: 'hello',
        desc: '挨拶', // オプション
      );

  // NumberFormatは実際には使い回したりするがサンプルなので毎回生成
  String followers(int count) =>
      _followers(NumberFormat.compact(locale: 'en').format(count));

  String _followers(String count) => Intl.message(
        'フォロワー: $count',
        name: '_followers',
        args: [count],
      );

  String dogsCount(int howMany) => Intl.plural(
        howMany,
        zero: 'no dog😢',
        one: 'a dog',
        other: '$howMany dogs',
        args: [howMany],
        name: 'dogsCount',
      );

  String hungry(String gender) => Intl.gender(
        gender,
        male: '僕はお腹が空きました',
        female: '私はお腹が空いたわ',
        other: 'はらぺこりん',
        name: 'hungry',
        args: [gender],
      );

  String memberStatus(Membership membership) => Intl.select(
        membership,
        {
          Membership.normal: '通常会員です',
          Membership.premium: 'プレミアム会員です✨✨',
        },
        name: 'memberStatus',
        args: [membership],
      );
}

enum Membership { normal, premium }
