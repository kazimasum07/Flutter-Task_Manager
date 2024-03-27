import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';


class On_Bording1 extends StatefulWidget {
  const On_Bording1({Key? key}) : super(key: key);

  @override
  State<On_Bording1> createState() => _On_Bording1State();
}

class _On_Bording1State extends State<On_Bording1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 16,right: 16),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 432,),
                  Text("Update Progress Your Work for The Team",style: mystyle(36,FontWeight.w700,textClrLight),),
                  SizedBox(height: 30,),
                  SvgPicture.asset('images/Slider.svg'),
                  SizedBox(height: 20,),
                  Custom_button(title: "Sign Up",onTap: () {}, isOutline: true
                    ,),
                  SizedBox(height: 10,),
                  Custom_button(title: "Login",onTap: () {}, isOutline: false,),
                  SizedBox(height: 10,)




                ],
              )



              //


            ],
          ),
        ),
      ),
    );
  }
}

class Custom_button extends StatelessWidget {
 Custom_button({
    Key? key,
    required this.title,
    required this.onTap,
    this.isOutline
  }) : super(key: key);

  String ?title;
  VoidCallback ?onTap;
  bool ?isOutline;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onTap,
      color: isOutline == true ? buttonClr : backgroundClr,

      minWidth: double.infinity,
      height: 56,

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        side: BorderSide(color: isOutline == true
            ? buttonClr : textClrLight)

      ),
      textColor: textClrLight,


      child: Text("$title", style: mystyle(18),),

    );
  }
}
