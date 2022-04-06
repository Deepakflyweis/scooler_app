
import 'package:flutter/material.dart';
import 'package:scooler_app/essentials/essentials.dart';

import '../../utils/app_color/app_color.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final resetFormKey = GlobalKey<FormState>();

  final _email = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bckgroundclr,
        // appBar: AppBar(
        //   backgroundColor: whiteclr,
        //   leading: IconButton(
        //     color: Colors.yellow,
        //     onPressed: () => Navigator.of(context).pop(),
        //     icon: Icon(Icons.arrow_back_ios,color: blckclr,size: 25),
        //   ),
        //   elevation: 0,
        // ),
        body: Padding(
          padding:   EdgeInsets.only(left: 15.0,right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 2.h,),
              IconButton(
                color: Colors.yellow,
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(Icons.arrow_back_ios,color: blckclr,size: 25),
              ),
              SizedBox(height: 5.h,),
              const Text(' Forgot',
                style: TextStyle(
                  fontSize: 35.0,
                  color: btnclr,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(' password?',
                style: TextStyle(
                  fontSize: 35.0,
                  color: btnclr,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 3.h,),
              Form(
                key: resetFormKey ,
                child: Container(
                  height: 8.h,
                  width: 90.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: whiteclr,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    controller: _email,
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
                        hintText: 'Enter your email address',
                        hintStyle: TextStyle(
                            color: Colors.grey
                        ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 3.h,),
               TextButton(
                 onPressed: (){

                 },
                 child: const Text(' Send code',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: greyclr,
                    fontWeight: FontWeight.bold,
                  ),
                 ),
               ),
              SizedBox(height: 5.h,),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: (){},
                  child: Image.asset('assets/images/arrow.png',
                    height: 100,
                    width: 80,
                    fit: BoxFit.fitHeight,),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
