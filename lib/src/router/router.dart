
import 'package:flutter/material.dart';
import 'package:learning_flutter/src/pages/home/home-page.dart';
import 'package:learning_flutter/src/pages/page-01/page1.dart';
import 'package:learning_flutter/src/pages/page-02/page2.dart';

class NavigatorController extends StatelessWidget{
  const NavigatorController({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator-Controller',
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      routes: {
        '/': (context) => HomePage(),
        '/first': (context) => const Page1(),
        '/second': (context) => const Page2()
      },
    );
  }
}