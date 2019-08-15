import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:intl_sample/l10n/l10n.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intl Demo',
      home: const MyHomePage(),
      localizationsDelegates: [
        L10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja'),
        Locale('en'),
      ],
      // localeListResolutionCallback: (_, __) => Locale('en'),
      // localeResolutionCallback: (_, __) => Locale('en'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intl Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(l10n.hello),
            Text(DateFormat().format(DateTime.now())),
            Text(l10n.followers(1400)),
            Text(l10n.dogsCount(0)),
            Text(l10n.dogsCount(1)),
            Text(l10n.dogsCount(5)),
            Text(l10n.hungry('male')),
            Text(l10n.hungry('female')),
            Text(l10n.hungry('other')),
            Text(l10n.memberStatus(Membership.normal)),
            Text(l10n.memberStatus(Membership.premium)),
          ],
        ),
      ),
    );
  }
}
