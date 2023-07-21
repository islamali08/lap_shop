import 'package:dio/dio.dart';

class diohelper {


  static Dio? dio;

  static init() {
    dio = Dio(
        BaseOptions(
          baseUrl: 'https://magdsoft.ahmedshawky.fun/api/',
          receiveDataWhenStatusError: true,


        )
    );
  }


  static Future<Response>? getdata({
    required String url,
    Map<String, dynamic>? qury,
    String lang = 'en',
    String? token,


  }) async{
    dio!.options.headers={

    };


    return  await dio!.get(
        url,
        queryParameters: qury


    );
  }



}

