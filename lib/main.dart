import 'package:ahdev/pages/design_select.dart';
import 'package:ahdev/pages/domain_select.dart';
import 'package:ahdev/pages/web_select_type.dart';
import 'package:flutter/material.dart';
import 'package:ahdev/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AHDEV',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'FiraCode',
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/web_select_type': (context) => WebSelectType(),
        '/web_design_select': (context) => DesignSelect(),
        '/web_domain_select': (context) => DomainSelect(),
      },
    );
  }
}
