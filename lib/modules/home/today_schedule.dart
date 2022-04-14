
import 'package:flutter/cupertino.dart';
import 'package:scooler_app/essentials/essentials.dart';
import 'package:scooler_app/utils/app_color/app_color.dart';
import 'package:scooler_app/utils/textstyle/text_style.dart';

class TodaySchedule extends StatefulWidget {


   TodaySchedule({Key? key}) : super(key: key);

  @override
  State<TodaySchedule> createState() => _TodayScheduleState();
}

class _TodayScheduleState extends State<TodaySchedule> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appbarY,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Today’s Schedule",style: appbarTxtStyle,),
          actions: [
            Padding(padding: EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.calendar_today, color: blckclr,) ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.h,),
            Image.asset('assets/images/morning.png',width: 100.w,fit: BoxFit.fill,),
            SizedBox(height: 3.h,),
            Row(
              children: [
                SizedBox(width: 1.w,),
                const Expanded(
                    child: Text('Notify when bus is about to reach the stop in the morning',
                      style: TextStyle(fontWeight: FontWeight.w500), )),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                  activeTrackColor: Colors.amber,
                  activeColor: Colors.white,
                ),
              ],
            ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('Bus has left the stop in the morning',
                style: TextStyle(fontWeight: FontWeight.w500), ),
              ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Bus has reached the school',
                style: TextStyle(fontWeight: FontWeight.w500), ),
            ),

            SizedBox(height: 5.h,),
            Image.asset('assets/images/afternoon.png',width: 100.w,fit: BoxFit.fill,),
            SizedBox(height: 3.h,),
            Row(
              children: [
                SizedBox(width: 1.w,),
                const Expanded(
                    child: Text('Notify when bus is about to reach the stop in the afternoon',
                      style: TextStyle(fontWeight: FontWeight.w500), )),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                  activeTrackColor: Colors.amber,
                  activeColor: Colors.white,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Bus has left the stop in the afternoon',
                style: TextStyle(fontWeight: FontWeight.w500), ),
            ),
          ],
        ),
      ),
    );
  }
}
