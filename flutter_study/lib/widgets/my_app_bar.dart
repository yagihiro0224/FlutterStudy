import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String strName;
  final Color appColor;

  const MyAppBar({
    super.key,
    required this.strName,
    required this.appColor,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 80,
      backgroundColor: Colors.redAccent,
      foregroundColor: Colors.green,
      title: Text(
        strName,
        style: TextStyle(
          color: appColor,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
