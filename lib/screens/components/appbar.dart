import 'package:flutter/material.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  final String titleName;
  const TopBar({Key? key, required this.titleName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        titleName,
        style: const TextStyle(
          fontSize: 30,
        ),
      ),
      centerTitle: false,
      backgroundColor: Colors.green,
      titleSpacing: 30,
      toolbarHeight: 60,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}