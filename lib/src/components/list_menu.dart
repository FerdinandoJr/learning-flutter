import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {
  final String label;
  final IconData icon;
  final String router;
  const ListMenu({super.key, required this.label, required this.icon, required this.router});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, router);
      },
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.white
        ),
        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                  icon,
                  color: Theme.of(context).primaryColor
              ),
              Text(
                label,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}