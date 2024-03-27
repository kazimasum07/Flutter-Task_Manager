import 'package:flutter/material.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';
import 'package:task_manager/features/bording/onbording1.dart';

import 'signup_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 20, left: 18,right: 18),
        height: size.height*1,
        width: size.width*1,
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignupScreen(),));
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

            Text("Your Password",style: mystyle(16,FontWeight.w400,formtextclr),),
            
            const SizedBox(height: 12),


            CustomFormFieldWidget(preIcon: Icons.key_sharp, hintText: "Enter Your Password"),


            const SizedBox(height: 30,),


            ///Login Button ///
            CustomButton(title: "Login", onTap: (){},isOutline: true, ),

            const SizedBox(height: 26,),
            
            Center(child: Text("Forget Your Password",style: mystyle(16,FontWeight.w400,Colors.white),))

          ],
        ),

      ),
    );
  }
}

class CustomFormFieldWidget extends StatelessWidget {
   CustomFormFieldWidget({
    super.key,
     required this.preIcon,
     required this.hintText
  });

   String ?hintText;
  final IconData preIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        fillColor: Colors.white,
        prefixIcon: Icon( preIcon,color: formtextclr ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: formtextclr,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(28),

          ),
        hintText: hintText,
          hintStyle: const TextStyle(color: formtextclr)

      ),
    );
  }
}
