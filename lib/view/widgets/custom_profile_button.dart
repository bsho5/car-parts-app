import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomProfileButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  CustomProfileButton(
      {required this.icon, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        child: ListTile(
          leading: Icon(icon),
          title: CustomText(
            text: text,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
    );
  }
}
