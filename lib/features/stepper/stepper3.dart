import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';
import 'package:task_manager/features/bording/onbording1.dart';
import 'package:task_manager/features/screens/login_screen.dart';

import 'stepper4.dart';



class Stepper3_Screen extends StatefulWidget {
  const Stepper3_Screen({Key? key}) : super(key: key);

  @override
  State<Stepper3_Screen> createState() => _Stepper3_ScreenState();
}

class _Stepper3_ScreenState extends State<Stepper3_Screen> {

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
                SvgPicture.asset('images/Slider_Signup3.svg'),
              ],
            ),

            Text("Create your own team?",style: mystyle(16,FontWeight.w700,textClrLight)),

            SizedBox(height: 24,),

            Text("Your Team Name",style: mystyle(16,FontWeight.w400,formtextclr),),
            SizedBox(height: 12,),
            FormFild_Widget(preIcon: Icons.account_circle_outlined, hint_Text: "e.g Parto Team"),
            SizedBox(height: 200,),
            Custom_button(title: "Continue", onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Stepper4_Screen(),));
            },isOutline: true,)

          ],
        ),
      ),
    );
  }
}
