
import 'package:flutter/cupertino.dart';
import 'package:scooler_app/essentials/essentials.dart';
import 'package:scooler_app/utils/app_color/app_color.dart';

class SelectRide extends StatelessWidget {
  const SelectRide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: whiteclr,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back,color: blckclr,size: 25),
          ),
          elevation: 0,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 3.h,),
              Image.asset(
                'assets/images/logo.png',
                height: 110,
                width: 100,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(height: 3.h,),
              Text('Please Select Your Ride',style: TextStyle(fontSize: 20)),
              SizedBox(height: 5.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Image.asset('assets/images/schoolride.png',
                      height: 130,
                      width: 130,
                      fit: BoxFit.fitHeight,),
                  ),

                  GestureDetector(
                    onTap: (){},
                    child: Image.asset('assets/images/officeride.png',
                      height: 130,
                      width: 130,
                      fit: BoxFit.fitHeight,),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
