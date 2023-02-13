import 'package:flutter/material.dart';

const List<String> list = <String>[
  'One',
  'Two',
  'Three',
  'Four',
  'Five',
  'Six'
];

void main() => runApp(const DropdownButtonApp());

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton Sample')),
        body: const Center(
          child: DropdownButtonExample(),
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey,
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.blue,
            shadowColor: Colors.red,
            dropdownMenuTheme: const DropdownMenuThemeData(
              menuStyle: MenuStyle(),
              inputDecorationTheme: InputDecorationTheme(hoverColor: Colors.red),
              textStyle: TextStyle(color: Colors.red)
            )),
        child: DropdownButton<String>(
          dropdownColor: Colors.red,
          // style: MenuStyle(backgroundColor: Colors.red),
          focusColor: Colors.red,
          value: dropdownValue == '' ? null : dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          isExpanded: true,
          elevation: 16,
          hint: const Text('Escolha seu dispositivo'),
          borderRadius: BorderRadius.circular(10),
          underline: Container(
            height: 0,
            color: Colors.transparent,
          ),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
