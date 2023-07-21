import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //  2 seconds before navigating to the main screen.
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => loginScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0062BD),
        body: Stack(
          children: [
            Positioned.fill(
              top: 8.h,
              bottom: 8.h,
              child: Image(
                image: AssetImage(
                  'assets/im1.png',
                ),
                fit: BoxFit.fill,
              ),
            ),

            Align(
                alignment: Alignment.center,
                child: Image(

                  image: AssetImage('assets/logo.png'),
                  height:22.h,
                  width: 62.w,
                )
            )

          ],
        ),
      ),
    );
  }
}
