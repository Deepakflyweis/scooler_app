
import 'package:flutter/material.dart';
import 'package:scooler_app/essentials/essentials.dart';

class PopupWidget extends StatefulWidget {
  const PopupWidget({Key? key}) : super(key: key);

  @override
  State<PopupWidget> createState() => _PopupWidgetState();
}



class _PopupWidgetState extends State<PopupWidget> {
  final List<String> _texts = [
    "8:00 Am",
    "7:00 Am",
    "9:00 Am",
  ];

  late List<bool> _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(_texts.length, false);
  }


  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),);
  }
  contentBox(context){
    return Stack(
      children: <Widget>[
        Container(
          height: 35.h,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(color: Colors.black,offset: Offset(0,10),
                    blurRadius: 10
                ),
              ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:  [
              const Text('Please Select Time', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
             Expanded(
              child: ListView.builder(
              itemCount: _texts.length,
              itemBuilder: (context, index) {
                return CheckboxListTile(
                  title: Text(_texts[index]),
                  value: _isChecked[index],
                  onChanged: (val) {
                    setState(
                          () {
                        _isChecked[index] = val !;
                      },
                    );
                  },
                );
              },
           ),
           ),

              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Text('Ok',style: TextStyle(fontSize: 18),)),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
