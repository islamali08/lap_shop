import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_project/moduls/phone_verfy.dart';
import 'package:sizer/sizer.dart';

import '../shared/componants/componants.dart';

class loginScreen extends StatelessWidget {
  final TextEditingController name = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        backgroundColor: Color(0xff0062BD),


        body:SingleChildScrollView(
          child: Column(
            children: [
            SizedBox(height: MediaQuery.of(context).size.height,
              child: Stack(

                children: [

                  Container(
                    height: 50.h,
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                        fit: BoxFit.fill,

                        image: AssetImage(


                            'assets/backimg.png')),
                  ),
                  Align(
alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 63.h,
                      width: MediaQuery.of(context).size.width,

                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(45.sp),topRight:Radius.circular(45.sp) )

                      ),
                    ),
                  ),

                  Positioned(
                    top: 70.h,
                    left: 5.w,
                    child: Container(
                      width: 40.w,
                      child: Divider(
                        thickness: 1,
                        color: Color(0xff639FD7),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70.h,
                    right: 5.w,
                    child: Container(
                      width: 40.w,
                      child: Divider(
                        thickness: 1,
                        color: Color(0xff639FD7),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 69.5.h,
                    left: 48.w,

                    child:Text('or',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'inter',
                          color: Color(0xff0062BD),
                          fontSize:
                          15.sp
                      ),
                    ),
                  ),
                  Positioned(
                      top: 80.h,
                      left: 26.w,


                      child:  Container(
                        height: 8.h,
                        width: 16.w,
                        child: Card(
                          child: Image.asset('assets/f.png'),
                          color: Color(0xffFFFFFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100), // Half of the width and height to form a circle
                          ),
                          elevation: 20.sp,),
                      )),
                  Positioned(
                      top: 80.h,
                      left: 45.w,


                      child:  Container(
                        height: 8.h,
                        width: 16.w,
                        child: Card(
                          child: Image.asset('assets/ios 1.png'),

                          color: Color(0xffFFFFFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100), // Half of the width and height to form a circle
                          ),
                          elevation: 20.sp,),
                      )),
                  Positioned(
                      top: 80.h,
                      left: 64.w,


                      child:  Container(
                        height: 8.h,
                        width: 16.w,
                        child: Card(
                          child: Image.asset('assets/Google__G__Logo 1.png'),
                          color: Color(0xffFFFFFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100), // Half of the width and height to form a circle
                          ),
                          elevation: 20.sp,),
                      )),


                  Positioned(
                    left: 7.w,
                    top: 20.h,
                    child:  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Border radius for rounded corners
                      ),
                      elevation: 4,
                      child: Container(
                          width: 85.w,
                          height: 40.h,
                          padding: EdgeInsets.all(12.sp),
                          child:Column(
                            children: [

                              Text('Welcome',
                                style: TextStyle(
                                    fontFamily: 'inter',
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(height: 1.h,),
                              Container(
                                width: 48.w,
                                child: Divider(
                                  thickness: 1,
                                  color: Color(0xff0062BD),

                                ),
                              ),
                              SizedBox(height: 3.h,),

                              Card(

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10), // Border radius for rounded corners
                                ),
                                elevation: 5,
                                child: Container(
                                  height: 6.h,
                                  width: 65.w,
                                  child: Center(
                                    child: textcontroler(

                                        hinttext: '  Enter your Full Name',

                                        controler: name,

                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 1.h,),

                              Card(

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10), // Border radius for rounded corners
                                ),
                                elevation: 5,
                                child: Container(
                                  height: 6.h,
                                  width: 65.w,
                                  child: Center(
                                    child: textcontroler(
                                        hinttext: '  Enter your Phone Number',

                                        controler: name
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 3.h,),

                              elvatebottom(
                                  color: Color(0xff0062BD),
                                  mins: Size(65.w, 6.h),
                                  tex: 'login',
                                  onpress: (){

                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return phoneverfy();
                                        },));
                                  }
                              )



                            ],
                          )
                      ),
                    ),
                  ),




                ],
              ) ,
            )
            ],
          ),
        ),
      ),
    );
  }
}
