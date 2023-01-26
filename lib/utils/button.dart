// ignore_for_file: prefer_const_constructors

import 'package:diary/utils/colorsandfeelings/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;
  final Color color;
  const MyButton({super.key, required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 22),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 8,
              offset: const Offset(5, 9),
            )
          ],
          color: color,
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
