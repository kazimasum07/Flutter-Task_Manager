import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/widgets/common_widgets.dart';

import 'onbording1.dart';


class Onbording2_Screen extends StatefulWidget {
  const Onbording2_Screen({Key? key}) : super(key: key);

  @override
  State<Onbording2_Screen> createState() => _Onbording2_ScreenState();
}

class _Onbording2_ScreenState extends State<Onbording2_Screen> {
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
                  Custom_button(title: "Sign Up",onTap: () {}, isOutline: true
                    ,),
                  SizedBox(height: 10,),
                  Custom_button(title: "Login",onTap: () {}, isOutline: false,),
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
