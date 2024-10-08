import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
bool? isResponsive;
double? width;
ResponsiveButton({super.key,
 this.isResponsive=false,
 this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF5d69b3)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("img/button-one.png")
      ],
      ),

    );
  }
}