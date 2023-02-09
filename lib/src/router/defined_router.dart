enum MyRouters {
  home,
  page1,
  page2
}

class DefinedRouter {
  String get(MyRouters router) {
    return '/${router.toString()}';
  }
}

var a = DefinedRouter().get(MyRouters.home);