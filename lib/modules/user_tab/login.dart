
import 'package:flutter/material.dart';
import 'package:scooler_app/essentials/essentials.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginFormKey = GlobalKey<FormState>();
  final userFormKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _pswd = TextEditingController();

  bool _showPassword = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: loginFormKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10),
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),

              Form(
                key: userFormKey,
                child: Container(
                  height: 60,
                  width: 350,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.2, ),
                    color: Colors.grey,
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
                      contentPadding: EdgeInsets.all(10.0),
                      border: InputBorder.none,
                      hintText: 'Username, Mobile Number',
                      hintStyle: TextStyle(
                        color: Colors.white10
                      )


                    ),
                  ),
                ),
              ),

               Container(
                height: 60,
                width: 350,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.2, ),
                  color: Colors.grey,
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
                      contentPadding: EdgeInsets.all(10.0),
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Colors.white10
                      )


                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
