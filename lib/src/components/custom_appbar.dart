import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback callback;
  final String title;
  const CustomAppBar({super.key, required this.callback, required this.title});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(40),
      child: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget> [
          IconButton(
            icon: const Icon(Icons.account_box_rounded, color: Colors.white,),
            tooltip: '',
            onPressed: callback
          )
        ],
        title: Text(
          title,
          style: const TextStyle(
              color: Colors.white
          ),
        ),
        toolbarHeight: 50.0,
      ),
    );
  }

  @override
  Size get preferredSize => const Size(0, 50.0);
}