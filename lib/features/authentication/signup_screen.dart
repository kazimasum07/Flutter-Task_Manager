import 'package:flutter/material.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';
import 'package:task_manager/features/bording/onbording1.dart';
import 'package:task_manager/features/stepper/stepper1.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 20, left: 18,right: 18),
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
        child: Column(
          children: [
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(top: 17,bottom: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.close,size: 20,color: Colors.white,),
                  GestureDetector(
                      onTap: (){

                      },
                      child: Text("Sign Up",style: mystyle(16,FontWeight.w700,Colors.white),))
                ],
              ),
            ),
            const SizedBox(height: 17,),
            Text("Your Email Address",style: mystyle(16,FontWeight.w400,formtextclr),),
            const SizedBox(height: 12,),


            CustomFormFieldWidget(hintText: "Enter Your Email",preIcon: Icons.email_outlined),
            const SizedBox(height: 16,),

            CustomButton(title: "Sign Up", onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Stepper1_Screen(),));
            },isOutline: true,)




          ],
        ),
      ),

    );
  }
}
