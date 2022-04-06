import 'package:flutter/cupertino.dart';
import 'package:scooler_app/essentials/essentials.dart';
import 'package:scooler_app/modules/user_tab/login.dart';
import 'package:scooler_app/modules/user_tab/register.dart';
import 'package:scooler_app/utils/app_color/app_color.dart';

import '../../utils/textstyle/text_style.dart';

class UserIndex extends StatefulWidget {
  const UserIndex({Key? key}) : super(key: key);

  @override
  State<UserIndex> createState() => _UserIndexState();
}

class _UserIndexState extends State<UserIndex> with SingleTickerProviderStateMixin {
  late TabController _tabController;


  @override
  void initState() {
    _tabController =   TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
            body: Container(
              child: Column(
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
                SizedBox(height: 3.h,),
                TabBar(
                    unselectedLabelColor: Colors.black,
                    indicatorColor: btnclr,
                    indicatorWeight:  5.0,
                    indicatorSize: TabBarIndicatorSize.label ,
                    controller: _tabController,
                    tabs: [
                  Tab( child: Text('Login',style: loginTxtStyle,)),
                  Tab( child: Text('Sign-up',style: loginTxtStyle,) ),
                ]),

                Expanded(
                  child: TabBarView(
                    children: const [
                       LoginScreen(),
                      Register(),
                    ],
                    controller: _tabController,
                  ),
                ),
              ],
            ),
          ),

      ),
    ));
  }
}
