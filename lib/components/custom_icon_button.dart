import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    required this.text,
    required this.iconPath,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String iconPath;
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: MaterialButton(
        color: Colors.transparent,
        elevation: 0,
        onPressed: () {},
        child: Column(
          children: [
            Image.asset(iconPath),
            SizedBox(
              height: 16,
            ),
            Text(text, style: TextStyle(color: Colors.white, fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
