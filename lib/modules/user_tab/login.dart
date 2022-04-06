
import 'package:flutter/material.dart';
import 'package:scooler_app/essentials/essentials.dart';
import 'package:scooler_app/modules/select_ride/ride_select.dart';
import 'package:scooler_app/modules/user_tab/forget_password.dart';
import 'package:scooler_app/utils/app_color/app_color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  final loginFormKey = GlobalKey<FormState>();
  final userFormKey = GlobalKey<FormState>();
  final passFormKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _pswd = TextEditingController();

  bool _showPassword = false;
  bool valuefirst = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bckgroundclr,
        body: Form(
          key: loginFormKey,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 3.h,
                  ),

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
                        controller: _username,
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
                          hintText: 'Username, Mobile Number',
                          hintStyle: TextStyle(
                            color: Colors.grey
                          )


                        ),
                      ),
                    ),
                  ),
                   SizedBox(height: 3.h,),

                  Form(
                    key: passFormKey ,
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
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                color: Colors.grey
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h,),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        activeColor: Colors.black26,
                        value: this.valuefirst,
                        onChanged: (value){
                          setState(() {
                            this.valuefirst = value!;
                          });
                        },
                      ),
                      const Text('Remember me',
                        style: TextStyle(color: blckclr,fontSize: 15,fontWeight: FontWeight.w500) ,),
                      SizedBox(width: 15.w,),
                        TextButton(
                          onPressed: (){
                            Get.to(()=> ForgetPassword());
                          },
                          child: const Text('Forgot password?',
                          style: TextStyle(color: orngtxtclr,fontSize: 15,fontWeight: FontWeight.bold) ,),
                        ),
                    ],
                  ),
                  SizedBox(height: 3.h,),
                  GestureDetector(
                    onTap: (){
                      _login();
                    },
                    child: Image.asset('assets/images/login.png',
                      height: 7.h,
                      width: 90.w,fit: BoxFit.fill),
                  ),
                  SizedBox(height: 2.h,),
                  const Text('OR',
                    style: TextStyle(color: blckclr,fontSize: 20,fontWeight: FontWeight.w500) ,),
                  SizedBox(height: 2.h,),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Image.asset('assets/images/fbbtn.png',
                        height: 7.h,
                        width: 90.w,fit: BoxFit.fill),
                  ),
                  SizedBox(height: 3.h,),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Image.asset('assets/images/google.png',
                        height: 7.h,
                        width: 90.w,fit: BoxFit.fill),
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

  void _login() {
    if(userFormKey.currentState!.validate()){
      if(passFormKey.currentState!.validate()){
        Get.offAll(()=> SelectRide());

      }

    }
  }


}
