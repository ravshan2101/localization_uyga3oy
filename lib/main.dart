import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization_uyga3oy/pagetwo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      child: MyApp(),
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ja', 'JP'),
        Locale('ko', 'KR'),
      ],
      fallbackLocale: Locale('en', 'US'),
      path: 'assets/translitions/'));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routes: {
        'home': (context) => const MyHomePage(),
        'two': (context) => Pagee()
      },
      initialRoute: 'home',
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30, right: 10, left: 10),
        child: Column(
          children: [
            Expanded(
                child: Center(
              child: Text(('welcome').tr()),
            )),
            Row(
              children: [
                Expanded(
                    child: MaterialButton(
                  onPressed: () {
                    context.setLocale(Locale('en', 'US'));
                  },
                  height: 50,
                  color: Colors.green,
                  child: Text('English'),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: MaterialButton(
                  onPressed: () {
                    context.setLocale(Locale('ko', 'KR'));
                  },
                  height: 50,
                  color: Colors.red,
                  child: Text('Korean'),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: MaterialButton(
                  onPressed: () {
                    context.setLocale(Locale('ja', 'JP'));
                  },
                  height: 50,
                  color: Colors.blue,
                  child: Text('Japanese'),
                )),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).pushNamed('two');
      }),
    );
  }
}
