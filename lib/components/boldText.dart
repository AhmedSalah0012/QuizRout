import 'package:flutter/cupertino.dart';

class BoldText extends StatelessWidget {
  String text;
   BoldText({required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: const TextStyle(fontSize:18 ,fontWeight: FontWeight.w600),);
  }
}
