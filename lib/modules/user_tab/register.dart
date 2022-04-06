
import 'package:flutter/material.dart';
import 'package:scooler_app/essentials/essentials.dart';
import 'package:scooler_app/modules/user_tab/login.dart';

import '../../utils/app_color/app_color.dart';
import '../select_ride/ride_select.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final signupFormKey = GlobalKey<FormState>();
  final userFormKey = GlobalKey<FormState>();
  final mobFormKey = GlobalKey<FormState>();
  final passFormKey = GlobalKey<FormState>();

  final _fname = TextEditingController();
  final _mob = TextEditingController();
  final _pswd = TextEditingController();
  final _confirmPswd = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bckgroundclr,
        body: SingleChildScrollView(
          child: Form(
            key: signupFormKey,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children:  [
                      SizedBox(width: 3.w,),
                      const Text('Register',
                      style: TextStyle(
                        fontSize: 35.0,
                        color: otxtclr,
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                      SizedBox(width: 25.w,),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Image.asset('assets/images/GG.png',
                            height: 10.h,
                            width: 15.w,fit: BoxFit.fitWidth),
                      ),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Image.asset('assets/images/fb logo.png',
                            height: 10.h,
                            width: 15.w,fit: BoxFit.fitWidth),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),

                  //full name
                  Form(
                    key: userFormKey,
                    child: Container(
                      height: 8.h,
                      width: 90.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: whiteclr,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextFormField(
                        controller: _fname,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field can\'t be empty';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            border: InputBorder.none,
                            hintText: 'Full Name',
                            hintStyle: TextStyle(
                                color: Colors.grey
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h,),

                  //mob no
                  Form(
                    key: mobFormKey ,
                    child: Container(
                      height: 8.h,
                      width: 90.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(

                        color: whiteclr,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextFormField(
                        controller: _mob,
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
                            border: InputBorder.none,
                            hintText: 'Mobile Number',
                            hintStyle: TextStyle(
                                color: Colors.grey
                            )


                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h,),

                  //pswd
                  Form(
                    key: passFormKey,
                    child: Container(
                      height: 8.h,
                      width: 90.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(

                        color: whiteclr,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextFormField(
                        controller: _pswd,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field can\'t be empty';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                color: Colors.grey
                            )


                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h,),

                  Container(
                    height: 8.h,
                    width: 90.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: whiteclr,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextFormField(
                      controller: _confirmPswd,
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
                          border: InputBorder.none,
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(
                              color: Colors.grey
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h,),

                  //Signup button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          _signup();
                        },
                        child: Image.asset('assets/images/signup.png',
                            height: 7.h,
                            width: 50.w,fit: BoxFit.fill),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.offAll(()=> LoginScreen());
                        },
                        child: Column(
                          children: const [
                            Text('Already a',
                            style: TextStyle(
                                color: Colors.black38,fontSize: 18,fontWeight: FontWeight.w500
                            )),
                            Text('Member? Login',
                            style: TextStyle(
                                color: Colors.black38,fontSize: 16,fontWeight: FontWeight.bold
                            )),

                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 3.h,),

                ],
              ),
            ),
          ),

        ),
      ),
    );
  }

  void _signup() {
    if( userFormKey.currentState!.validate()){
      if(mobFormKey.currentState!.validate()){
            Get.offAll(()=> SelectRide());

      }

    }
  }
}
