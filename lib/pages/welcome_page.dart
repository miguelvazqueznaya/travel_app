import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';
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
            ),
            fit: BoxFit.cover
          )
        ),
        child: Container(
            margin: const EdgeInsets.only(top:  150, left: 20, right: 20),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppLargeText(text: "Trips"),
                    AppText(text: "Mountain", size: 30,),
                    SizedBox(height:20, ),
                    Container(
                      width: 250,
                      child: AppText(
                        text: "Mountain hikes give a sense of freedom as well as amazing views and appreciation for nature",
                        color: Color.fromARGB(199, 84, 84, 84),
                        size: 14,
                        ),
                    ),
                    SizedBox(height: 40,),
                    ResponsiveButton(width: 120,)
                  ],               
                ),
                Column(
                  children: List.generate(3, (indexDots){
                    return Container(
                      margin: const EdgeInsets.only(bottom: 2),
                      width: 8,
                      height: index==indexDots?25:8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: index==indexDots?Color(0xFF5d69b3): Color(0xFF5d69b3).withOpacity(0.3),
                      )
                    );
                  }),
                )
              ],
            )
          )
       );
    }),
    ) ;
  }
}