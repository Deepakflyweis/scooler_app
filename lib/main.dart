import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scooler_app/essentials/essentials.dart';
import 'package:scooler_app/modules/home/nav_bar_menu.dart';
import 'package:scooler_app/modules/home/today_schedule.dart';
import 'package:scooler_app/modules/home_index/office_ride/morning_evening.dart';
import 'package:scooler_app/modules/home_index/office_ride/office_ride_homepage.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context,orirentation,deviceType){
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Scooler',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RouteOffice(),
      );
    });
  }
}

