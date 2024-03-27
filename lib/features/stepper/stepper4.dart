import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';
import 'package:task_manager/features/bording/onbording1.dart';
import 'package:task_manager/features/screens/login_screen.dart';

import 'stepper5.dart';


class Stepper4_Screen extends StatefulWidget {
  const Stepper4_Screen({Key? key}) : super(key: key);

  @override
  State<Stepper4_Screen> createState() => _Stepper4_ScreenState();
}

class _Stepper4_ScreenState extends State<Stepper4_Screen> {
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
                SvgPicture.asset('images/Slider_Signup4.svg'),
              ],
            ),

            Text("Enter Your Code Team",style: mystyle(16,FontWeight.w700,textClrLight)),

            SizedBox(height: 24,),

            Text("Code Team",style: mystyle(16,FontWeight.w400,formtextclr),),
            SizedBox(height: 12,),
            FormFild_Widget(preIcon: Icons.email_outlined, hint_Text: "e.g JXHJKH"),
            SizedBox(height: 200,),
            Custom_button(title: "Continue", onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Stepper5_Screen()));
            },isOutline: true,)

          ],
        ),
      ),
    );
  }
}
