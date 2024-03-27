import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';
import 'package:task_manager/features/bording/onbording1.dart';
import 'package:task_manager/utils/constants/colors.dart';


class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        color: TMCustomColors.whiteColor,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 238,),
            Container(
              padding: EdgeInsets.all(33),
              height: 96,
              width: 96,
              color: cardClr,
              child: SvgPicture.asset('assets/icons/appicon.svg'),
            ),
            Text("RANCANG",style: mystyle(36,FontWeight.w700,textClrLight),),
            Text("Your Personal Task Manager",style: mystyle(16,FontWeight.w400,textClrDark),),
            ElevatedButton(
                onPressed: (){},
                child: Text("Elevated Button"),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => On_Bording1(),));

              },
              child: Container(
                padding: EdgeInsets.only(left: 16,right: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: buttonClr,
                  borderRadius: BorderRadius.circular(28),

                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 17,bottom: 17,left: 16,right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Getting Started",style: mystyle(17,FontWeight.w600,textClrLight),),
                      Icon(Icons.chevron_right_sharp,color: textClrLight,)
                    ],
                  ),
                ),
              ),
            )
          ],
        )
        
      ),
    );
  }
}
