import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:internship_project/shared/bloc/app_state.dart';
import 'package:internship_project/shared/local/shared_prefrance.dart';
import 'package:sizer/sizer.dart';

import '../model/name_model.dart';
import '../shared/bloc/app_bloc.dart';
import '../shared/componants/componants.dart';

class productScreen extends StatefulWidget {
  const productScreen({Key? key}) : super(key: key);

  @override
  State<productScreen> createState() => _productScreenState();
}



class _productScreenState extends State<productScreen> {
  bool fav = false ;

  @override
  void initState() {

    // TODO: implement initState
    super.initState();
  appcupit.get(context).value=  cashhelper.getdata(key: 'ind')??0;
  }


  final TextEditingController name = TextEditingController();

  List<namemodel> np = [
    namemodel('all', 'assets/vector-trophy-cup-icon 1.png'),
    namemodel('accer', 'assets/l2.png'),
    namemodel('accer', 'assets/l2.png')
  ];


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<appcupit, appstate>(
        listener: (BuildContext context, Object? state) {},
        builder: (BuildContext context, state) {

          return SafeArea(
            child: Scaffold(
              bottomNavigationBar: CurvedNavigationBar(
onTap:(int index){

 appcupit.get(context).buttomstat(index);


} ,
                height: 8.h,
                   animationDuration:Duration(milliseconds: 100) ,

                items: [
                  Icon(Icons.home,size: 30,color:appcupit.get(context).value==0? Colors.white:Colors.grey),
                  Icon(Icons.favorite,size: 30,color:appcupit.get(context).value==1? Colors.white:Colors.grey),
                  Icon(Icons.add,size: 30,color:appcupit.get(context).value==2? Colors.white:Colors.grey),
                  Icon(Icons.arrow_circle_right_outlined,size: 30,color:appcupit.get(context).value==3? Colors.white:Colors.grey),


                ],
                backgroundColor:Colors.transparent ,
                color: Colors.white,
                animationCurve:Curves.bounceIn ,
                index: appcupit.get(context).value!,
                buttonBackgroundColor: Color(0xff0062BD),



              ),
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
                                'assets/Rectangle 38 (2).png'),
                          ),

                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10), // Border radius for rounded corners
                                      ),
                                      elevation: 3,
                                      child: Container(
                                        height: 6.h,
                                        width: 65.w,
                                        child: Center(
                                          child: textcontroler(
                                            ico: Icon(Icons.search),
                                            hinttext: '  search',
                                            controler: name,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10), // Border radius for rounded corners
                                      ),
                                      elevation: 5,
                                      child: Container(
                                        height: 6.h,
                                        width: 14.w,
                                        child: Image.asset(
                                            'assets/Vector.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/LAP.png',
                                  height: 20.h,
                                  width: 85.w,
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Container(
                                width: double.infinity,
                                height: 10.h,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Card(
                                        elevation: 15,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              20), // Border radius for rounded corners
                                        ),
                                        child: Container(
                                          height: 11.h,
                                          width: 35.w,
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 2.w),
                                                child: Card(
                                                  shape:
                                                      RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20), // Border radius for rounded corners
                                                  ),
                                                  child: CircleAvatar(
                                                    child: Image.asset(
                                                        np[index].image!),
                                                    backgroundColor:
                                                        Colors.white,
                                                  ),
                                                  elevation: 2,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 3.w,
                                              ),
                                              Text(
                                                  style: TextStyle(
                                                      fontSize: 20),
                                                  np[index].name!)
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(20))),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),










                          Expanded(
                            child: GridView.builder(



physics:ScrollPhysics() ,
scrollDirection: Axis.vertical,


itemCount: appcupit.get(context).productlistmodele!.product!.length,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                                  crossAxisCount: 2,
                                     childAspectRatio: 0.6,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 5,

                                ),


                                itemBuilder: (context, index) {

  return Transform.translate(offset:Offset(0.0, index.isOdd?0.0:70),
    child: Padding(
    padding: const EdgeInsets.all(3),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // Border radius for rounded corners
  ),

      elevation: 4,
      child: Container(
        height: 15.h,
        width: 50.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(

              children: [
                Card(


        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18), // Border radius for rounded corners
      ),
                  elevation: 1,

                  child: Container(
                    height: 20.h,
                    child: Image.network(
                      alignment: Alignment.center,
                        appcupit.get(context).productlistmodele!.product![index].image!),
                  ),
                ),

                Positioned(
                  top: 2.h,
                  right: 4,
                  child: Image(
                    color:Colors.grey,
                    alignment: Alignment.topLeft,
                    image: AssetImage('assets/Vector (1).png'),),
                )
              ],
              alignment: Alignment.topRight,
            ),
            Padding(
              padding:  EdgeInsets.only(top: 1.h,left: 2.w),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(

                      appcupit.get(context).productlistmodele!.product![index].company!,
                    style: TextStyle(
                      fontSize: 20,

                    ),
                  ),
                  SizedBox(height: 1.h),
                  Text(


                    appcupit.get(context).productlistmodele!.product![index].name!,
                    maxLines: 1,
                    style: TextStyle(

                        fontSize: 15
                    ),
                  ),





                ],
              ),
            ),
SizedBox(height: 3.h,),
            Padding(
              padding:  EdgeInsets.only(left: 3.w),
              child: Text(appcupit.get(context).productlistmodele!.product![index].price!),
            ),

            Stack(
              children: [

                Align(
                  alignment: Alignment.bottomRight,
                  child: Image(
                      image: AssetImage('assets/Rectangle 45 (1).png')),
                ),

                Positioned(
                  top: 1.h,
                  right: 2.w,
                  child: Icon(Icons.add,
                    color: Colors.white,
                  ),
                )
              ]
            )


          ],
        ),
      ),
    ),
    ),


  );
                                }),
                          )













                            ],
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
