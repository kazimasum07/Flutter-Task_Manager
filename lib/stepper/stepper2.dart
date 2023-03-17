import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/bording/onbording1.dart';
import 'package:task_manager/stepper/stepper3.dart';

import '../widgets/common_widgets.dart';

class Stepper2_Screen extends StatefulWidget {
  const Stepper2_Screen({Key? key}) : super(key: key);

  @override
  State<Stepper2_Screen> createState() => _Stepper2_ScreenState();
}

class _Stepper2_ScreenState extends State<Stepper2_Screen> {
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
                SvgPicture.asset('images/Slider_Signup2.svg'),
              ],
            ),
            SizedBox(height: 26,),
            Custom_button(title: "Create Your Own team", onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Stepper3_Screen(),));
            },isOutline: true,),
            SizedBox(height: 24,),
            Text("Or",style: mystyle(16,FontWeight.w700,textClrLight)),
            SizedBox(height: 24,),
            Custom_button(title: "Join Team", onTap: (){

            },isOutline: false,),


          ],
        ),

      ),
    );
  }
}
