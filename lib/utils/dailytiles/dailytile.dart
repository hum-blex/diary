import 'package:flutter/material.dart';
import '../colorsandfeelings/feelings.dart';
import '../colorsandfeelings/colors.dart';

class dailytile extends StatelessWidget {
  String felt;
  dailytile({super.key, required this.felt});

  Color? setColor(String feel) {
    Color col;
    for (int i = 0; i < 7; i++) {
      if (feelings[i] == feel) {
        col = colors[i];
        return col;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 218, 216, 216),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 10, bottom: 3),
                  child: Text(
                    "2023/01/20",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 10,
                    ),
                  )),
              Container(
                height: 60,
                width: 80,
                decoration: BoxDecoration(
                    color: setColor(felt),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: Text(
                  felt,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                )),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
