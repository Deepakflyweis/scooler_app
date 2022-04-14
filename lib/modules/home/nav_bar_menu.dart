import 'package:flutter/material.dart';
import 'package:scooler_app/essentials/essentials.dart';
import 'package:scooler_app/modules/home_index/school_ride/school_ride_homepage.dart';
import 'package:scooler_app/utils/app_color/app_color.dart';
import 'package:scooler_app/utils/textstyle/text_style.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            SizedBox(height: 1.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 13.w,
                  child: ClipOval(
                    child: Image.asset('assets/images/prof.png',
                        fit: BoxFit.cover),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Smt. Sujata Yadav',
                      style: TextStyle(fontWeight: FontWeight.bold),),
                    const Text('sujatayadav@gmail.com',
                      style: TextStyle(color: greyclr),),
                    const Text(
                      '+91 964xx xxxxx', style: TextStyle(color: greyclr),),
                    SizedBox(height: 1.h,),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/images/editp.png', width: 70,
                          height: 25, fit: BoxFit.fitHeight),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Get.offAll(()=> SchoolRideHomePage());
                  },
                  icon: Icon(Icons.close,color: blckclr,size: 35),
                )
              ],
            ),
            SizedBox(height: 2.h,),
            Divider(thickness: 2.0,),
            ListTile(
              onTap: (){},
              title: Text('My Track',style: TxtNormal),),
            Divider(thickness: 1.2 ),
            ListTile(
              onTap: (){},
              title: Text('My Plans',style: TxtNormal),),
            Divider(thickness: 1.2 ),
            ListTile(
              onTap: (){},
              title: Text('Add Location Alert',style: TxtNormal),),
            Divider(thickness: 1.2 ),
            ListTile(
              onTap: (){},
              title: Text('Chat',style: TxtNormal),),
            Divider(thickness: 1.2 ),
            ListTile(
              onTap: (){},
              title: Text('Notifications',style: TxtNormal),),
            Divider(thickness: 1.2 ),
            ListTile(
              onTap: (){},
              title: Text('Parental Control',style: TxtNormal),),
            Divider(thickness: 1.2 ),
            ListTile(
              onTap: (){},
              title: Text('Child Management',style: TxtNormal),),
            Divider(thickness: 1.2 ),
            ListTile(
              onTap: (){},
              title: Text('All Profile',style: TxtNormal),),
            Divider(thickness: 1.2 ),
            ListTile(
              onTap: (){},
              title: Text('Today’s Schedule',style: TxtNormal),),
            Divider(thickness: 1.2 ),
            ListTile(
              onTap: (){},
              title: Text('My Subscription',style: TxtNormal),),
            Divider(thickness: 1.2 ),
            ListTile(
              onTap: (){},
              title: Text('Settings',style: TxtNormal),),
            Divider(thickness: 1.2 ),
            ListTile(
              onTap: (){},
              title: Text('Feedback',style: TxtNormal),),
            Divider(thickness: 1.2 ),
            ListTile(
              onTap: (){},
              title: Text('Enroll your school',style: TxtNormal),),
          ],
        ),
    );
  }
}
