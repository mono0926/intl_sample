import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intl Demo',
      home: const HomePage(),
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      localeListResolutionCallback: (locales, supportedLocales) {
        final locale = basicLocaleListResolution(locales, supportedLocales);
        Intl.defaultLocale = locale.toString();
        return locale;
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    print('current locale: ${Intl.getCurrentLocale()}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intl Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(l10n.hello),
            Text(l10n.helloWorldOn(DateTime.now())),
            Text(l10n.followers(140000)),
            Text(l10n.dogsCount(0)),
            Text(l10n.dogsCount(1)),
            Text(l10n.dogsCount(5)),
            Text(l10n.hungry('male')),
            Text(l10n.hungry('female')),
            Text(l10n.hungry('other')),
            Text(l10n.memberStatus(Membership.normal.name)),
            Text(l10n.memberStatus(Membership.premium.name)),
          ],
        ),
      ),
    );
  }
}

enum Membership { normal, premium }
