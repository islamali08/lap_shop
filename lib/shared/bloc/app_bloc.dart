import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internship_project/shared/Network/dio_helper.dart';
import 'package:internship_project/shared/local/shared_prefrance.dart';

import '../../model/product_model.dart';
import 'app_state.dart';

class appcupit extends Cubit<appstate> {
  appcupit() : super(initialstate());

  static appcupit get(context) => BlocProvider.of(context);


  productlistmodel? productlistmodele;

  void getproduct() {

    emit(productstate());

    diohelper.getdata(
      url: 'http://magdsoft.ahmedshawky.fun/api/getProducts',
    )?.then((value) {
      productlistmodele = productlistmodel.fromjeson(value.data);
      print(productlistmodele!.product![0].name);

      emit(productsucsice());



    }).catchError((onError){
      print(onError.toString());

      emit(producteror());

    });
  }

  int? value ;

void buttomstat(int index){

  value = index ;

  cashhelper.savedata(key: 'ind', value: index).then((value) {

        value =  cashhelper.getdata(key: 'ind')??0 ;

  });
  emit(butomnavstate());

}

}