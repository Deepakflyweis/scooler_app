
import 'package:flutter/material.dart';
import 'package:scooler_app/essentials/essentials.dart';
import 'package:scooler_app/model/intro_welcome.dart';
import 'package:scooler_app/modules/user_tab/user_index.dart';
import 'package:scooler_app/utils/app_color/app_color.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int currtpage = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currtpage = index;
                });
              },
              itemBuilder: (_, i) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(contents[i].image!,),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          contents[i].title!,
                          style: const TextStyle(
                              color: Color(0xff010F07),
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                          SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          contents[i].discription!,
                          textAlign: TextAlign.center,
                          style:
                          TextStyle(color: Color(0xff868686), fontSize: 16),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    contents.length, (index) => buildDot(index, context))),
          ),
          Container(
            height: 40,
            width:  120,
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
                color:  btnclr,
                borderRadius: BorderRadius.circular(10)),
            child: TextButton(

              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                Get.to(()=> UserIndex());
              },
              child: Text(
                currtpage == contents.length - 1 ? 'Start' : "Next",
                style: TextStyle(fontWeight: FontWeight.bold,color: btntxtclr,fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currtpage == index ? 10 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currtpage == index ? Color(0xFFEEA537) : Color(0xff979797),
      ),
    );
  }
}
