import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scooler_app/essentials/essentials.dart';
import 'package:scooler_app/modules/select_ride/ride_select.dart';
import 'package:scooler_app/modules/user_tab/forget_password.dart';
import 'package:scooler_app/modules/user_tab/login.dart';
import 'package:scooler_app/modules/user_tab/register.dart';
import 'package:scooler_app/modules/welcome/splash_screen.dart';

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
        home: ForgetPassword(),
      );
    });
  }
}

