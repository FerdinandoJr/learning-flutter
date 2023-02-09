import 'package:flutter/material.dart';

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
          color: Theme.of(context).primaryColor,
          child: Column(
            children: [
              IconButton(
                  onPressed: () => Navigator.pushNamed(context, '/'),
                  icon: const Icon(Icons.home),
                  padding:  const EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
              ),
              const Text(
                  'Pagina 2'
              ),
            ],
          ),
        ),
      ),
    );
  }
}