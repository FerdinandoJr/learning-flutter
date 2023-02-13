import 'package:flutter/material.dart';

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
                  height: 100,
                  child: Image.asset('assets/images/Dta_Company.png')
              ),
              // const Padding(
              //   padding: EdgeInsets.all(10.0),
              //   child: DropdownButtonExample(),
              // ),
              ElevatedButton(
                onPressed: () => Navigator.popAndPushNamed(context, '/home'),
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
