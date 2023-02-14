import 'package:flutter/material.dart';
import 'package:learning_flutter/src/navigator/defined_router.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Container(
          height: 80.0,
          color: Colors.blueAccent,
          child: Column(
            children: [
              IconButton(
                  onPressed: () => const Navigator2().popAndPush(context, DefinedRouter.page3),
                  icon: const Icon(Icons.home),
                  padding:  const EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
              ),
              const Text(
                  'Ir para pagina 3'
              ),
            ],
          ),
        ),
      ),
    );
  }
}