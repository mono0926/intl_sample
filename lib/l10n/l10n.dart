import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import 'messages_all.dart';

export 'l10n_delegate.dart';

/// アプリでの文言はこれ経由で取得する
class L10n {
  /// 言語リソースを扱う
  ///
  /// localeは端末設定・アプリの指定を踏まえて最適なものが渡ってくる
  static Future<L10n> load(Locale locale) async {
    final name = locale.countryCode == null || locale.countryCode.isEmpty
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);

    // 言語リソース読み込み
    await initializeMessages(localeName);
    // デフォルト言語を設定
    Intl.defaultLocale = localeName;
    // 自身を返す
    return L10n();
  }

  // Widgetツリーから自身を取り出す
  static L10n of(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  final _numberFormat = NumberFormat.compact(locale: 'en');
  String formatInt(int num) => _numberFormat.format(num);

  // 以下、Intl.messageを用いて必要な文言を返すgetter・メソッドを定義

  String get hello => Intl.message(
        'こんにちは',
        name: 'hello',
        desc: '挨拶', // オプション
      );

  String followers(String count) => Intl.message(
        'フォロワー: $count',
        name: 'followers',
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
          Membership.premius: 'プレミアム会員です✨✨',
        },
        name: 'memberStatus',
        args: [membership],
      );
}

enum Membership { normal, premius }
