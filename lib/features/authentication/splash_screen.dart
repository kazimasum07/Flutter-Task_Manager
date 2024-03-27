import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';
import 'package:task_manager/features/bording/onbording1.dart';
import 'package:task_manager/utils/constants/colors.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: size.width*1,
        height: size.height*1,
        child: Column(
          children: [
            const SizedBox(height: 238,),
            Container(
              padding: const EdgeInsets.all(33),
              height: 96,
              width: 96,
              color: cardClr,
              child: SvgPicture.asset('assets/icons/appicon.svg'),
            ),
            Text("RANCANG",style: mystyle(36,FontWeight.w700,textClrLight),),
            Text("Your Personal Task Manager",style: mystyle(16,FontWeight.w400,textClrDark),),
            SizedBox(height: size.height*0.2,),
            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OnBoarding1(),));

                },
                child: Container(
                  padding: const EdgeInsets.only(left: 16,right: 16),
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
              ),
            )
          ],
        )
        
      ),
    );
  }
}
