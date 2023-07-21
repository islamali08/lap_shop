 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textcontroler ({TextEditingController? controler,String? hinttext,Icon? ico}){

  return TextFormField(
    controller:controler ,
    decoration: InputDecoration(
      suffixIcon: ico,
      hintText: hinttext,

      border: InputBorder.none,



    ),

  );



  }
  


  
  
  Widget elvatebottom ({
  void Function()? onpress,
    String? tex,
    Size? mins,
    Color? color

}){
  
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // Rounded corner
        ),
      backgroundColor:color ,

      minimumSize: mins),

    onPressed: onpress,

      child: Text(tex!),




  );
  
  }