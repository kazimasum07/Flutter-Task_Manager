import 'package:flutter/material.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;
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

          ],
        ),
        
      ),

      floatingActionButton:  FloatingActionButton(onPressed: () {},

        child: Icon(Icons.add),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: textClrDark,
        currentIndex: currentIndex,
        showUnselectedLabels: true,
        iconSize: 20,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        items: [


          BottomNavigationBarItem(
            backgroundColor: cardClr,
            icon: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/My_task.png"),)
              ),
            ),
            label: 'My Task',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'Calender',
          ),
          
          
          
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),



          // BottomNavigationBarItem(
          //

          //   label: "My task"
          // ),
          //
          // BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined,color: Colors.white,),
          //     label: "Calender"
          // ),
          //
          // BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined,color: Colors.white,),
          //     label: "Calender"
          // ),
          // BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined,color: Colors.white,),
          //     label: "Calender"
          // ),



        ],
        
        backgroundColor: cardClr,
      ),



    );
  }
}
