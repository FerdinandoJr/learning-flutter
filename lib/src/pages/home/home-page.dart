import 'package:flutter/material.dart';
import 'package:learning_flutter/src/components/custom_appbar.dart';
import 'package:learning_flutter/src/components/home_menus.dart';

class HomePage extends StatefulWidget {
  String title = "Data Company";
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(),
      ),
      body: const Scrollbar (
        child: Center(
            child: HomeMenus(),
        ),
      ),
      drawer: Drawer(
        child: Center(
          child: Column(
            children: [
              IconButton(
                  onPressed: _closeDrawer,
                  icon: const Icon(
                      Icons.close
                  )
              ),
              Text(
                  '$count'
              ),
              IconButton(
                  onPressed: increment,
                  icon: const Icon(
                      Icons.plus_one
                  )
              ),
            ],
          ),
        ),
      ),
      drawerEnableOpenDragGesture: false,
    );
  }
}