import 'package:flutter/material.dart';
import 'package:task_manager/bording/onbording1.dart';
import 'package:task_manager/screens/signup_screen.dart';
import 'package:task_manager/widgets/common_widgets.dart';


class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 18,right: 18),
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup_Screen(),));
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

            Text("Your Password",style: mystyle(16,FontWeight.w400,formtextclr),),
            
            SizedBox(height: 12),


            FormFild_Widget(preIcon: Icons.key_sharp, hint_Text: "Enter Your Password"),


            SizedBox(height: 30,),


            ///Login Button ///
            Custom_button(title: "Login", onTap: (){},isOutline: true, ),

            SizedBox(height: 26,),
            
            Center(child: Text("Forget Your Password",style: mystyle(16,FontWeight.w400,Colors.white),))
            
            
            






          ],
        ),

      ),
    );
  }
}

class FormFild_Widget extends StatelessWidget {
   FormFild_Widget({
    Key? key,
     required this.preIcon,
     required this.hint_Text
  }) : super(key: key);

   String ?hint_Text;
  final IconData preIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        fillColor: Colors.white,
        prefixIcon: Icon( preIcon,color: formtextclr ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: formtextclr,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(28),

          ),
        hintText: hint_Text,
          hintStyle: TextStyle(color: formtextclr)

      ),
    );
  }
}
