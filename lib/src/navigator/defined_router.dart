import 'package:flutter/cupertino.dart';
import 'package:learning_flutter/src/pages/devices-selector/devices-selector.dart';
import 'package:learning_flutter/src/pages/home/home-page.dart';
import 'package:learning_flutter/src/pages/page-01/page1.dart';
import 'package:learning_flutter/src/pages/page-02/page2.dart';
import 'package:learning_flutter/src/pages/page-03/page3.dart';

class DefinedRouter {
  static Widget devicesSelector = DevicesSelector();
  static Widget home = HomePage();
  static Widget page1 = const Page1();
  static Widget page2 = const Page2();
  static Widget page3 = const Page3();
}

class Navigator2 extends Navigator{
  const Navigator2({super.key});

  void push(context, Widget router) => Navigator.push( context, _createPageRouterBuilder(router) );

  void pop(context) => Navigator.pop(context);

  void popAndPush(context, Widget router) {
    pop(context);
    push(context, router);
  }

  static PageRouteBuilder _createPageRouterBuilder (Widget router) {
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation animation1, Animation animation2) {
        return router;
      },
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
    );
  }
}
