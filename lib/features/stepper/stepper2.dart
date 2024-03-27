import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';
import 'package:task_manager/features/bording/onbording1.dart';

import 'stepper3.dart';


class Stepper2Screen extends StatefulWidget {
  const Stepper2Screen({super.key});

  @override
  State<Stepper2Screen> createState() => _Stepper2ScreenState();
}

class _Stepper2ScreenState extends State<Stepper2Screen> {
  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        height: size.height*1,
        width: size.width*1,
        color: Colors.black,
        child: Column(
          children: [
            const SizedBox(height: 46,),
            Row(
              children: [
                const Icon(Icons.chevron_left,color: Colors.white,),
                const SizedBox(width: 100,),
                SvgPicture.asset('images/Slider_Signup2.svg'),
              ],
            ),
            const SizedBox(height: 26,),
            CustomButton(title: "Create Your Own team", onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Stepper3Screen(),));
            },isOutline: true,),
            const SizedBox(height: 24,),
            Text("Or",style: mystyle(16,FontWeight.w700,textClrLight)),
            const SizedBox(height: 24,),
            CustomButton(title: "Join Team", onTap: (){

            },isOutline: false,),


          ],
        ),

      ),
    );
  }
}
