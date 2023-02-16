import 'package:flutter/material.dart';
import 'package:learning_flutter/src/navigator/defined_router.dart';
import 'package:learning_flutter/src/pages/home/home-page.dart';

import '../../components/dropdown.dart';

class DevicesSelector extends StatefulWidget {
  DevicesSelector({super.key});

  @override
  State<DevicesSelector> createState() => _DevicesSelectorState();
}

class _DevicesSelectorState extends State<DevicesSelector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset(
                  'assets/gifs/intro.gif'
                ),
                // child: Icon(Icons.network_locked_outlined, size: 100),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: DropdownButtonExample(),
              ),
              ElevatedButton(
                onPressed: () => const Navigator2().push(context, DefinedRouter.home),
                // onPressed: () => Navigator.push(
                //   context,
                //   PageRouteBuilder(
                //     pageBuilder: (BuildContext context, Animation animation1,
                //         Animation animation2) {
                //       return HomePage();
                //     },
                //     transitionDuration: const Duration(seconds: 20),
                //     reverseTransitionDuration: Duration.zero,
                //   ),
                // ),
                // style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: Text(
                    'CONFIRMAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
