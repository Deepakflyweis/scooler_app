
import 'package:flutter/material.dart';
import 'package:scooler_app/essentials/essentials.dart';
import 'package:scooler_app/utils/app_color/app_color.dart';
import 'package:scooler_app/utils/textstyle/text_style.dart';

class ParentRegistration extends StatefulWidget {
  const ParentRegistration({Key? key}) : super(key: key);

  @override
  State<ParentRegistration> createState() => _ParentRegistrationState();
}

class _ParentRegistrationState extends State<ParentRegistration> {
  final nameFormKey = GlobalKey<FormState>();
  final mobFormKey = GlobalKey<FormState>();
  final emailFormKey = GlobalKey<FormState>();
  final relationFormKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final relation = TextEditingController();
  final mob = TextEditingController();
  final email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: whiteclr,
            elevation: 1,
            title: Text('Parent Registration', style: appbarTxtStyle,),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black, size: 30),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Image.asset('assets/images/lang.png',
                    height: 10, width: 35, fit: BoxFit.fitWidth),
              ),
            ],
          ),
          backgroundColor: bckgroundclr,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 2.h,),
                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 15.w,
                        backgroundColor: Colors.amber,
                        // child:
                        // Image.asset(' '),
                      ),
                      Positioned(
                          right: 0,
                          bottom: 10,
                          child: Icon(
                            Icons.add_circle,
                            size: 25.sp,
                            color: blckclr,
                          ))
                    ],
                  ),),
                SizedBox(height: 2.h,),
                Center(child: Text('Please Select Photo' ),),
                SizedBox(height: 2.h,),
                Form(
                  key: nameFormKey ,
                  child: Container(
                    height: 8.h,
                    width: 90.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(

                      color: whiteclr,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      controller: name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          border: InputBorder.none,
                          hintText: 'Enter Name',
                          hintStyle: TextStyle(
                              color: Colors.grey
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h,),
                Form(
                  key: relationFormKey,
                  child: Container(
                    height: 8.h,
                    width: 90.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: whiteclr,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextFormField(
                      obscureText: true,
                      controller: relation,
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
                          hintText: 'Enter Relation',
                          hintStyle: TextStyle(
                              color: Colors.grey
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h,),
                Form(
                  key: mobFormKey,
                  child: Container(
                    height: 8.h,
                    width: 90.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: whiteclr,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextFormField(
                      obscureText: true,
                      controller: mob,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          border: InputBorder.none,
                          hintText: 'Mobile No',
                          hintStyle: TextStyle(
                              color: Colors.grey
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h,),
                Form(
                  key: emailFormKey,
                  child: Container(
                    height: 8.h,
                    width: 90.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: whiteclr,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextFormField(
                      obscureText: true,
                      controller: email,
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
                          hintText: 'Enter Relation',
                          hintStyle: TextStyle(
                              color: Colors.grey
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3.h,),
                Center(
                  child: GestureDetector(
                    onTap: (){},
                    child: Image.asset('assets/images/add.png',
                        height: 7.h,fit: BoxFit.fill),
                  ),
                ),
                SizedBox(height: 3.h,),
                GestureDetector(
                  onTap: (){},
                  child: Image.asset('assets/images/raiser.png', height: 7.h,
                      width: 88.w,fit: BoxFit.fill),
                ),
                SizedBox(height: 3.h,),
              ],
            ),
          ),)
    );
  }
}
