import 'package:flutter/cupertino.dart';
import 'package:scooler_app/essentials/essentials.dart';
import 'package:scooler_app/modules/user_tab/login.dart';
import 'package:scooler_app/modules/user_tab/register.dart';
import 'package:scooler_app/utils/app_color/app_color.dart';

import '../../utils/textstyle/text_style.dart';

class UserIndex extends StatelessWidget {
  const UserIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
              backgroundColor: bckgroundclr,
      // appBar: AppBar(
      //   backgroundColor: whiteclr,
      //   title: Image.asset(
      //     'assets/images/logo.png', height: 100, fit: BoxFit.cover,),
      //   centerTitle: true,
      //
      //   bottom: const TabBar(
      //     tabs: [
      //       Tab(text: "Tab 1"),
      //       Tab(text: "Tab 2")
      //     ],
      //   ),
      //
      // ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.h,),
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 110,
                    width: 100,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(height: 5.h,),
                DefaultTabController(
                  length: 2,
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        constraints: BoxConstraints.expand(height: 60),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),),
                          color: Colors.white12
                        ),
                        child: TabBar(
                          indicatorColor: btnclr,
                            indicatorWeight:  5.0,
                            indicatorSize: TabBarIndicatorSize.label ,
                            tabs: [
                          Tab( child: Text('Login',style: loginTxtStyle,)),
                          Tab( child: Text('Sign-up',style: loginTxtStyle,) ),
                        ]),
                      ),
                      TabBarView(
                          children: [
                            LoginScreen(),
                            Register(),
                          ]),



                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
