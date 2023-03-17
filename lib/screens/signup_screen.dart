import 'package:flutter/material.dart';
import 'package:task_manager/bording/onbording1.dart';
import 'package:task_manager/stepper/stepper1.dart';
import 'package:task_manager/widgets/common_widgets.dart';

import 'login_screen.dart';

class Signup_Screen extends StatefulWidget {
  const Signup_Screen({Key? key}) : super(key: key);

  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 20, left: 18,right: 18),
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(top: 17,bottom: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.close,size: 20,color: Colors.white,),
                  GestureDetector(
                      onTap: (){

                      },
                      child: Text("Sign Up",style: mystyle(16,FontWeight.w700,Colors.white),))
                ],
              ),
            ),
            SizedBox(height: 17,),
            Text("Your Email Address",style: mystyle(16,FontWeight.w400,formtextclr),),
            SizedBox(height: 12,),


            FormFild_Widget(hint_Text: "Enter Your Email",preIcon: Icons.email_outlined),
            SizedBox(height: 16,),

            Custom_button(title: "Sign Up", onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Stepper1_Screen(),));
            },isOutline: true,)




          ],
        ),
      ),

    );
  }
}
