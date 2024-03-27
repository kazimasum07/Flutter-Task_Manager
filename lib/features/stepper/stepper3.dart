import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';
import 'package:task_manager/features/authentication/login_screen.dart';
import 'package:task_manager/features/bording/onbording1.dart';


import 'stepper4.dart';



class Stepper3Screen extends StatefulWidget {
  const Stepper3Screen({super.key});

  @override
  State<Stepper3Screen> createState() => _Stepper3ScreenState();
}

class _Stepper3ScreenState extends State<Stepper3Screen> {

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
                SvgPicture.asset('images/Slider_Signup3.svg'),
              ],
            ),

            Text("Create your own team?",style: mystyle(16,FontWeight.w700,textClrLight)),

            const SizedBox(height: 24,),

            Text("Your Team Name",style: mystyle(16,FontWeight.w400,formtextclr),),
            const SizedBox(height: 12,),
            CustomFormFieldWidget(preIcon: Icons.account_circle_outlined, hintText: "e.g Parto Team"),
            const SizedBox(height: 200,),
            CustomButton(title: "Continue", onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Stepper4_Screen(),));
            },isOutline: true,)

          ],
        ),
      ),
    );
  }
}
