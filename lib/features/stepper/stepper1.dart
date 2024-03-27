import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';
import 'package:task_manager/features/bording/onbording1.dart';
import 'package:task_manager/features/screens/login_screen.dart';
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
          padding: EdgeInsets.all(16.0),
          height: size.height*1,
          width: size.width*1,
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 46,),
              Row(
                children: [
                  Icon(Icons.chevron_left,color: Colors.white,),
                  SizedBox(width: 100,),
                  SvgPicture.asset('images/Slider_Signup1.svg'),
                ],
              ),
              SizedBox(height: 40,),

              Center(child: Text("Complete Your Profiles",style: mystyle(16,FontWeight.w700,textClrLight))),
              SizedBox(height: 16,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 144),
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff8E8E93),
                ),
                
                child: Icon(Icons.camera_alt_outlined,color: Colors.white), 
              ),

              SizedBox(height: 24,),

              Text("Your Full Name",style: mystyle(16,FontWeight.w400,formtextclr),),
              SizedBox(height: 12,),
              FormFild_Widget(preIcon: Icons.account_circle_outlined, hint_Text: "Enter your full name"),
              SizedBox(height: 16,),

              Text("Your Password",style: mystyle(16,FontWeight.w400,formtextclr),),
              SizedBox(height: 12,),
              FormFild_Widget(preIcon: Icons.key_sharp, hint_Text: "Enter your password"),
              SizedBox(height: 16,),
              Custom_button(title: "Continue", onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Stepper2_Screen(),));
              },isOutline: true,)



            ],
          ),
        ),
      ),
    );
  }
}
