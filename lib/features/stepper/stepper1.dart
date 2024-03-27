import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';
import 'package:task_manager/features/authentication/login_screen.dart';
import 'package:task_manager/features/bording/onbording1.dart';
import 'package:task_manager/features/stepper/stepper2.dart';


class Stepper1_Screen extends StatefulWidget {
  const Stepper1_Screen({Key? key}) : super(key: key);

  @override
  State<Stepper1_Screen> createState() => _Stepper1_ScreenState();
}

class _Stepper1_ScreenState extends State<Stepper1_Screen> {

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          height: size.height*1,
          width: size.width*1,
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 46,),
              Row(
                children: [
                  const Icon(Icons.chevron_left,color: Colors.white,),
                  const SizedBox(width: 100,),
                  SvgPicture.asset('images/Slider_Signup1.svg'),
                ],
              ),
              const SizedBox(height: 40,),

              Center(child: Text("Complete Your Profiles",style: mystyle(16,FontWeight.w700,textClrLight))),
              const SizedBox(height: 16,),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 144),
                width: 90,
                height: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff8E8E93),
                ),
                
                child: const Icon(Icons.camera_alt_outlined,color: Colors.white),
              ),

              const SizedBox(height: 24,),

              Text("Your Full Name",style: mystyle(16,FontWeight.w400,formtextclr),),
              const SizedBox(height: 12,),
              CustomFormFieldWidget(preIcon: Icons.account_circle_outlined, hintText: "Enter your full name"),
              const SizedBox(height: 16,),

              Text("Your Password",style: mystyle(16,FontWeight.w400,formtextclr),),
              const SizedBox(height: 12,),
              CustomFormFieldWidget(preIcon: Icons.key_sharp, hintText: "Enter your password"),
              const SizedBox(height: 16,),
              CustomButton(title: "Continue", onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Stepper2Screen(),));
              },isOutline: true,)



            ],
          ),
        ),
      ),
    );
  }
}
