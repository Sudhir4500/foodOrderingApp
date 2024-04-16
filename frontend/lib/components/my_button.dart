import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const MyButton({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 300, // Set the minimum width of the button
          minHeight: 50, // Set the minimum height of the button
        ),
        child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero), // Remove default button padding
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
            backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
