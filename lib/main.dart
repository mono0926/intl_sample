import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Intl Demo',
      home: HomePage(),
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      // localeListResolutionCallback: (_, __) => Locale('en'),
      // localeResolutionCallback: (_, __) => Locale('en'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

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
            Text(l10n.helloWorldOn(DateTime.now())),
            Text(l10n.followers(140000)),
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

enum Membership { normal, premium }
