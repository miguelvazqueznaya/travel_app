import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/rendering.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State <WelcomePage> createState() =>  WelcomePageState();
}

class  WelcomePageState extends State <WelcomePage> {
  List images = [
  "welcome-one.png",
  "welcome-two.png",
  "welcome-three.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: images.length,
      itemBuilder: (_,index){
       return Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "img/"+images[index]
            )
          )
        )
       );
    })
    ) ;
  }
}