import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'boldText.dart';

class SeeMoreRow extends StatelessWidget {
  Color color;
  String text;
   SeeMoreRow({required this.color,required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BoldText(text: text),
        const Spacer(),
        Text("See more",
            style: TextStyle(
                color: color,
                fontSize: 14,
                fontWeight: FontWeight.bold)),
        Icon(
          Icons.arrow_forward_ios,
          size: 14,
          color: color,
        )
      ],
    );
  }
}
