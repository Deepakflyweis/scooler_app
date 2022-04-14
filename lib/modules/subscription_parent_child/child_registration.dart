import 'package:flutter/material.dart';
import 'package:scooler_app/essentials/essentials.dart';
import 'package:scooler_app/utils/app_color/app_color.dart';
import 'package:scooler_app/utils/dropdown/dropdown_builder.dart';
import 'package:scooler_app/utils/textstyle/text_style.dart';

class ChildRegistration extends StatefulWidget {
  const ChildRegistration({Key? key}) : super(key: key);

  @override
  State<ChildRegistration> createState() => _ChildRegistrationState();
}

class _ChildRegistrationState extends State<ChildRegistration> {
  final nameFormKey = GlobalKey<FormState>();
  final _class = TextEditingController();
  final _name = TextEditingController();
  final _address = TextEditingController();
  final _pickup = TextEditingController();
  final _drop = TextEditingController();
  final _schoolAdd = TextEditingController();

  bool _value = false;
  int? val = -1;
  bool imp = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
        centerTitle: true,
        backgroundColor: whiteclr,
        elevation: 1,
        title: Text(
          'Child Registration',
          style: appbarTxtStyle,
        ),
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
            SizedBox(
              height: 2.h,
            ),
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
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Center(
              child: Text('Please Select Photo'),
            ),
            SizedBox(
              height: 2.h,
            ),
            Form(
              key: nameFormKey,
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
                  controller: _name,
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
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 8.h,
              width: 90.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: whiteclr,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextFormField(
                obscureText: true,
                controller: _class,
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
                    hintText: 'Enter Class',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 8.h,
              width: 90.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: whiteclr,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextFormField(
                obscureText: true,
                controller: _address,
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
                    hintText: 'Enter Your Adrress',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 8.h,
              width: 90.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: whiteclr,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextFormField(
                obscureText: true,
                controller: _pickup,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Field can\'t be empty';
                  }
                  return null;
                },
                decoration:   InputDecoration(
                    contentPadding: const EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.keyboard_arrow_down,
                          size: 25, color: blckclr),
                      onPressed: () {
                        showDialog(context: context,
                            builder: (BuildContext context){
                              return PopupWidget();
                            }
                        );
                      },
                    ),
                    hintText: 'Pickup Time',
                    hintStyle: const TextStyle(color: Colors.grey)),
              ),
            ),

            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 8.h,
              width: 90.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: whiteclr,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextFormField(
                obscureText: true,
                controller: _drop,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Field can\'t be empty';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                        icon: const Icon(Icons.keyboard_arrow_down,
                            size: 25, color: blckclr),
                        onPressed: () {
                          showDialog(context: context,
                              builder: (BuildContext context){
                                return PopupWidget();
                              }
                          );
                          // SimpleDialog(
                          //   children: [
                          //     SimpleDialogOption(
                          //       onPressed: () {},
                          //       child: Row(
                          //         children: [
                          //           Radio(
                          //             value: 1,
                          //             groupValue: val,
                          //             onChanged: (value) {
                          //               setState(() {
                          //                 val = value! as int?;
                          //               });
                          //             },
                          //           ),
                          //           Text('Option 1'),
                          //         ],
                          //       ),
                          //     ),
                          //     SimpleDialogOption(
                          //       onPressed: () {},
                          //       child: Row(
                          //         children: [
                          //           Radio(
                          //             value: 2,
                          //             groupValue: val,
                          //             onChanged: (value) {
                          //               setState(() {
                          //                 val = value! as int?;
                          //               });
                          //             },
                          //           ),
                          //           Text('Option 1'),
                          //         ],
                          //       ),
                          //     ),
                          //     SimpleDialogOption(
                          //       onPressed: () {},
                          //       child: Row(
                          //         children: [
                          //           Radio(
                          //             value: 3,
                          //             groupValue: val,
                          //             onChanged: (value) {
                          //               setState(() {
                          //                 val = value! as int?;
                          //               });
                          //             },
                          //           ),
                          //           Text('Option 1'),
                          //         ],
                          //       ),
                          //     ),
                          //   ],
                          // );
                        }),
                    hintText: 'Drop Time',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 8.h,
              width: 90.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: whiteclr,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextFormField(
                obscureText: true,
                controller: _schoolAdd,
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
                    hintText: 'School Address',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset('assets/images/nextbtn.png',
                  height: 7.h, width: 88.w, fit: BoxFit.fill),
            ),
            SizedBox(
              height: 3.h,
            ),
          ],
        ),
      ),
    ));
  }
}
