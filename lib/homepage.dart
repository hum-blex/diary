// ignore_for_file: prefer_const_constructors

import 'package:diary/utils/dailytile.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade400,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Hey Humblex!",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "How was your day?",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      color: Color.fromARGB(255, 239, 237, 237),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView(
                  children: [
                    dailytile(
                      felt: 'Awesome',
                    ),
                    dailytile(
                      felt: 'Nice',
                    ),
                    dailytile(
                      felt: 'Good',
                    ),
                    dailytile(
                      felt: 'Usual',
                    ),
                    dailytile(
                      felt: 'Bad',
                    ),
                    dailytile(
                      felt: 'Awful',
                    ),
                    dailytile(
                      felt: 'Terrible',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
