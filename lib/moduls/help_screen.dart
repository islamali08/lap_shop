import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_project/moduls/productscreen.dart';
import 'package:sizer/sizer.dart';

import '../shared/componants/componants.dart';

class helpScreen extends StatefulWidget {
  const helpScreen({Key? key}) : super(key: key);

  @override
  State<helpScreen> createState() => _helpScreenState();
}

class _helpScreenState extends State<helpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                      'assets/Rectangle 38 (2).png'),
                ),
                
                Center(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 5.w),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Help',
                          style: TextStyle(
                            fontSize: 30
                          ),
                        ),


                        SizedBox(height: 5.h,),

                        Card(
                           shape:    RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20), // Border radius for rounded corners
                  ),
                          child: Container(
                            height: 20.h,
                            width: 100.w,

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Account',
                                        style: TextStyle(
                                          fontSize: 17
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(Icons.arrow_upward_outlined),

                                    ],
                                  ),
                                  SizedBox(height: 2.h,),
                                  Text(
                                    style: TextStyle(
                                      fontSize: 20
                                    ),
                                      'You need to create an account to use the application but you can delete your account any time you want')
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 4.h,),

                        Card(
                          shape:    RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15), // Border radius for rounded corners
                          ),
                          child: Container(
                            height: 8.h,
                            width: 100.w,

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Row(
                                  children: [
                                    Text('Account',
                                      style: TextStyle(
                                          fontSize: 17
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.arrow_downward),

                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 2.h,),

                        Card(
                          shape:    RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15), // Border radius for rounded corners
                          ),
                          child: Container(
                            height: 8.h,
                            width: 100.w,

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Row(
                                  children: [
                                    Text('Account',
                                      style: TextStyle(
                                          fontSize: 17
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.arrow_downward),

                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h,),

                        Card(
                          shape:    RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15), // Border radius for rounded corners
                          ),
                          child: Container(
                            height: 8.h,
                            width: 100.w,

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Row(
                                  children: [
                                    Text('Account',
                                      style: TextStyle(
                                          fontSize: 17
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.arrow_downward),

                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),

                        elvatebottom(
                            color: Color(0xff0062BD),
                            mins: Size(65.w, 6.h),
                            tex: 'Continus',
                            onpress: (){

                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return productScreen();
                                  },));
                            }
                        )


                      ],
                    ),
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
