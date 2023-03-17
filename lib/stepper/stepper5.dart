import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../bording/onbording1.dart';
import '../screens/login_screen.dart';
import '../widgets/common_widgets.dart';

class Stepper5_Screen extends StatefulWidget {
  const Stepper5_Screen({Key? key}) : super(key: key);

  @override
  State<Stepper5_Screen> createState() => _Stepper5_ScreenState();
}

class _Stepper5_ScreenState extends State<Stepper5_Screen> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        height: size.height*1,
        width: size.width*1,
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: 46,),
            Row(
              children: [
                Icon(Icons.chevron_left,color: Colors.white,),
                SizedBox(width: 100,),
                SvgPicture.asset('images/Slider_Signup5.svg'),
              ],
            ),

            Text("Invite Your Team Member",style: mystyle(16,FontWeight.w700,textClrLight)),

            SizedBox(height: 24,),

            Text("Email Member",style: mystyle(16,FontWeight.w400,formtextclr),),
            SizedBox(height: 12,),
            FormFild_Widget(preIcon: Icons.key, hint_Text: "Type an email addrress"),
            SizedBox(height: 200,),
            Custom_button(title: "Continue", onTap: (){

            },isOutline: true,)

          ],
        ),
      ),
    );
  }
}
