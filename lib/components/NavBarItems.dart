import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarItems extends StatelessWidget {
  int selectedIndex;
  IconData iconData;
  int ownindex;
  Color color;
   NavBarItems({required this.selectedIndex,required this.ownindex,required this.iconData,required this.color,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        iconData==Icons.navigation?Transform.rotate(
          angle: 45 * 3 / 180,
          child: const Icon(
            Icons.navigation,
            size: 24,
          ),):
        Icon(
          iconData,
          size: 24,
        ),const SizedBox(height: 10,),
        Visibility(
          visible: ownindex==selectedIndex,
          child: Container(
            width: 6, // Adjust the width of the dot
            height: 6, // Adjust the height of the dot
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
        ),

      ],
    );
  }
}
