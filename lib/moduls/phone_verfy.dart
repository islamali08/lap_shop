import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_project/moduls/productscreen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

import '../shared/componants/componants.dart';
import 'help_screen.dart';

class phoneverfy extends StatefulWidget {
  const phoneverfy({Key? key}) : super(key: key);

  @override
  State<phoneverfy> createState() => _phoneverfyState();
}

class _phoneverfyState extends State<phoneverfy> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,


                child: Stack(

children: [
  Container(
    height: 40.h,
    width: MediaQuery.of(context).size.width,
    child: Image.asset(
        fit: BoxFit.fill,
        'assets/Rectangle 38 (2).png'

    ),
  ),


  Column(

    children: [
      Padding(
        padding:  EdgeInsets.only(top: 10.h),
        child: Text(
            'Verify Phone',
            style: TextStyle(fontSize: 18),
        ),
      ),
      SizedBox(height: 10.h),
      PinCodeTextField(

          appContext: context,

          length: 4,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // Set the number of verification code digits
          onChanged: (value) {
            // Handle the code verification here
          },
          pinTheme: PinTheme(

            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            fieldHeight: 10.h,
            fieldWidth: 17.w,
            activeFillColor:Color(0xffFFFFFF),
            activeColor: Color(0xffFFFFFF),
            disabledColor: Color(0xffFFFFFF),
            selectedColor: Color(0xffFFFFFF),
            inactiveFillColor: Color(0xffFFFFFF),
            selectedFillColor: Color(0xffFFFFFF),
            inactiveColor: Color(0xffFFFFFF),
            borderWidth: 1,


          ),
          keyboardType: TextInputType.number,
          controller: _textEditingController,
          cursorColor: Colors.black,
          animationType: AnimationType.fade,
          animationDuration: Duration(milliseconds: 300),
          enableActiveFill: true,
          autoFocus: true,
          textStyle: TextStyle(fontSize: 24),
      ),
      SizedBox(height: 4.h),

      TextButton(onPressed: (){


      }, child: Text('Resend Code')),
      SizedBox(height: 8.h,),
      elvatebottom(
        onpress: (){

          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return helpScreen();
              },));
        },
        tex: 'Verify',
        mins: Size(70.w, 6.h)

      )
    ],
  ),
],              ),
              ),
            ],
          ),
        ),

      );

  }
}
