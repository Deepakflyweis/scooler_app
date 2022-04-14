
import 'package:flutter/material.dart';
import 'package:scooler_app/essentials/essentials.dart';
import 'package:scooler_app/modules/home/nav_bar_menu.dart';
import 'package:scooler_app/utils/app_color/app_color.dart';

class OfficeRideHomePage extends StatefulWidget {
  const OfficeRideHomePage({Key? key}) : super(key: key);

  @override
  State<OfficeRideHomePage> createState() => _OfficeRideHomePageState();
}

class _OfficeRideHomePageState extends State<OfficeRideHomePage> {
  final searchFormKey = GlobalKey<FormState>();
  final schoolFormKey = GlobalKey<FormState>();
  final _search = TextEditingController();
  final _school = TextEditingController();


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
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
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

                SizedBox(height: 3.h,),
                GestureDetector(
                  child: Image.asset('assets/images/tickbook.png',height: 6.h, width: 88.w,fit: BoxFit.fill),
                  onTap: (){ },
                ),
                SizedBox(height: 3.h,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset('assets/images/wherelive.png',
                       width: 40.w,fit: BoxFit.fill),
                ),
                SizedBox(height: 2.h,),
                Form(
                  key: searchFormKey,
                  child: Container(
                    height: 8.h,
                    width: 90.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: whiteclr,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextFormField(
                      controller: _search,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: 'Search home location',
                          hintStyle: TextStyle(
                              color: Colors.grey
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h,),
                Form(
                  key: schoolFormKey,
                  child: Container(
                    height: 8.h,
                    width: 90.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: whiteclr,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextFormField(
                      controller: _school,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: 'Search School location',
                          hintStyle: TextStyle(
                              color: Colors.grey
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h,),
                GestureDetector(
                  child: Image.asset('assets/images/snc.png',height: 7.h, width: 88.w,fit: BoxFit.fill),
                  onTap: (){ },
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
