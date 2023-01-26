// ignore_for_file: prefer_const_constructors

import 'package:diary/utils/button.dart';
import 'package:flutter/material.dart';

class NewDailyTile extends StatelessWidget {
  const NewDailyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Expanded(
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              expands: true,
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                hintText: 'So, what happened today?',
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(
                name: 'Save',
                color: Color.fromARGB(255, 130, 234, 234),
              ),
              MyButton(
                name: 'Cancel',
                color: Color.fromARGB(255, 240, 124, 40),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
