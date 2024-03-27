import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';


import 'onbording1.dart';


class OnBoarding2Screen extends StatefulWidget {
  const OnBoarding2Screen({super.key});

  @override
  State<OnBoarding2Screen> createState() => _OnBoarding2ScreenState();
}

class _OnBoarding2ScreenState extends State<OnBoarding2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        //padding: EdgeInsets.only(left: 16,right: 16),
        color: backgroundClr,
        child: Stack(

          children: [
            Positioned(
                top: -140,
                child: Transform.rotate(
                  angle: pi/5,
                  child: Container(

                    height: 394,
                    width: 480,
                    decoration: BoxDecoration(
                        color: cardClr2,
                        borderRadius: BorderRadius.circular(40)
                    ),

                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 432,),
                  Text("Create a Task and Assign it to Your Team Members",style: mystyle(36,FontWeight.w700,textClrLight),),
                  SizedBox(height: 30,),
                  SvgPicture.asset('images/Slider2.svg'),
                  SizedBox(height: 20,),
                  CustomButton(title: "Sign Up",onTap: () {}, isOutline: true
                    ,),
                  SizedBox(height: 10,),
                  CustomButton(title: "Login",onTap: () {}, isOutline: false,),
                  SizedBox(height: 10,)




                ],
              ),
            )



            //


          ],
        ),
      ),
    );
  }
}
