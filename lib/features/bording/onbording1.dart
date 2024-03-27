import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';
import 'package:task_manager/features/authentication/login_screen.dart';
import 'package:task_manager/features/authentication/signup_screen.dart';



class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(left: 16,right: 16),
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
                children: [
                   SizedBox(height: size.height*0.45,),
                  Text("Update Progress Your Work for The Team",style: mystyle(36,FontWeight.w700,textClrLight),),
                  const SizedBox(height: 30,),
                  SvgPicture.asset('images/Slider.svg'),
                  const SizedBox(height: 20,),
                  CustomButton(title: "Sign Up",onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const SignupScreen()));
                  }, isOutline: true
                    ,),
                  const SizedBox(height: 10,),
                  CustomButton(title: "Login",onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const LoginScreen()));
                  }, isOutline: false,),
                  const SizedBox(height: 10,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
 CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.isOutline
  });

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
