import 'package:flutter/material.dart';

import 'package:desings/src/pages/basico_page.dart';
import 'package:desings/src/pages/scroll_page.dart';
import 'package:desings/src/pages/buttons_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Cambiar el estilo de la barra
    /*SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent
      )
    );*/

    return MaterialApp(
      title: 'Diseños',
      debugShowCheckedModeBanner: false,
      initialRoute: 'basico',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'buttons': (BuildContext context) => ButtonsPage()
      },
    );
  }
}