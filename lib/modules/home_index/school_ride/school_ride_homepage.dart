
import 'package:flutter/material.dart';
import 'package:scooler_app/essentials/essentials.dart';
import 'package:scooler_app/modules/home/nav_bar_menu.dart';

import 'package:scooler_app/utils/app_color/app_color.dart';

class SchoolRideHomePage extends StatefulWidget {
  const SchoolRideHomePage({Key? key}) : super(key: key);

  @override
  State<SchoolRideHomePage> createState() => _SchoolRideHomePageState();
}

class _SchoolRideHomePageState extends State<SchoolRideHomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bckgroundclr,
        drawer: NavBar(),
        appBar: AppBar(
          leading: Padding(
            padding:   EdgeInsets.only(left: 10.0),
            child: GestureDetector(
              onTap: (){
              },
              child: Image.asset('assets/images/menu.png',width: 40,fit: BoxFit.fitWidth),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Image.asset('assets/images/lang.png',
                  height: 10, width:35 ,fit: BoxFit.fitWidth),
            ),
          ],
          backgroundColor: whiteclr,
          elevation: 2,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 3.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // SizedBox(width: 1.w,),
                  GestureDetector(
                    child: Image.asset('assets/images/trackbus.png',
                        height: 120, width:70 ,fit: BoxFit.fitHeight),
                    onTap: (){ },
                  ),
                  GestureDetector(
                    child: Image.asset('assets/images/busalarm.png',
                        height: 120, width:70 ,fit: BoxFit.fitHeight),
                    onTap: (){ },
                  ),
                  GestureDetector(
                    child: Image.asset('assets/images/cctv.png',
                        height: 120, width:70 ,fit: BoxFit.fitHeight),
                    onTap: (){ },
                  ),
                  GestureDetector(
                    child: Image.asset('assets/images/wallet.png',
                        height: 120, width:70 ,fit: BoxFit.fitHeight),
                    onTap: (){ },
                  ),
                ],
              ),

              SizedBox(height: 2.h,),
                const Padding(padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                    child: Text('Note : If you are planning to holiday',style: TextStyle(color: greyclr))),
              ),
              SizedBox(height: 2.h,),
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset('assets/images/holyd.png',
                    height: 40, width:130 ,fit: BoxFit.fill),
              ),
              SizedBox(height: 5.h,),

              Center(
                 child: Image.asset('assets/images/stst.png',
                  height: 130, width:130 ,fit: BoxFit.fill),
              )
            ],
          ),
        ),
      ),
    );
  }
}
