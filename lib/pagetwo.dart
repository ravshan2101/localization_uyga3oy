import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pagee extends StatefulWidget {
  const Pagee({Key? key}) : super(key: key);

  @override
  State<Pagee> createState() => _PageState();
}

class _PageState extends State<Pagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(('welcome').tr()),
          ),
          Container(
            child: MaterialButton(
              onPressed: () {
                context.setLocale(Locale('en', 'US'));
              },
              height: 50,
              color: Colors.green,
              child: Text('English'),
            ),
          )
        ],
      )),
    );
  }
}
