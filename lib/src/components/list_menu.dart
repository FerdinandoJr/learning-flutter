import 'package:flutter/material.dart';
import 'package:learning_flutter/src/navigator/defined_router.dart';
import 'package:learning_flutter/src/pages/page-02/page2.dart';

class ListMenu extends StatelessWidget {
  final String label;
  final IconData icon;
  final Widget router;
  const ListMenu({super.key, required this.label, required this.icon, required this.router});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => const Navigator2().push(context, router),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
                icon,
                color: Theme.of(context).primaryColor,
                size: 40,
            ),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}