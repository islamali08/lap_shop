import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internship_project/shared/Network/dio_helper.dart';
import 'package:internship_project/shared/bloc/app_bloc.dart';
import 'package:internship_project/shared/bloc/app_state.dart';
import 'package:internship_project/shared/local/shared_prefrance.dart';
import 'package:sizer/sizer.dart';

import 'moduls/help_screen.dart';
import 'moduls/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  diohelper.init();
  runApp(const MyApp());
  await cashhelper.init() ;

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(




      create: (BuildContext context)=>appcupit()..getproduct(),
      child: BlocConsumer<appcupit,appstate>(

        listener: (BuildContext context, Object? state) {},
        builder: (context, state) {
          return  Sizer(builder:
              (BuildContext context, Orientation orientation, DeviceType deviceType) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
            ) ;
          },

          ) ;
        },


      ),
    );
  }
}
