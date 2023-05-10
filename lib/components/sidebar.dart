import 'package:cloud_saas_web/components/textcomponents.dart';
import 'package:cloud_saas_web/constants/appstrings.dart';
import 'package:cloud_saas_web/constants/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../Data/sidemenudata.dart';
import '../Utils/textshadowutils.dart';
class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColours  _appcolor =AppColours();
    AppStrings _appstrings=AppStrings();
    return Container(
      padding:const  EdgeInsets.all(15),
      color: Colors.white,
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                margin:const  EdgeInsets.only(right: 10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color:_appcolor.bluegreen,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color:_appcolor.bluegreen.withOpacity(0.5),
                      offset: const Offset(2,2),
                      blurRadius: 2

                    ),

                  ]

                ),
                child:const  Icon(Icons.cloud_upload_outlined,color: Colors.white,),
              ),
              Heading2(_appstrings.appname),

            ],
          ),
         const  SizedBox(height: 40,),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              itemCount: menulist.length,

              itemBuilder:(context,index){
              if(index>5){
                if(index>5&&index<7){
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50  ),
                    child: DottedBorder(
                     dashPattern: const [4,4],
                      color: Colors.grey,
                      strokeWidth: 1,
                      child:SizedBox(


                        height: 120,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Icon(menulist[index].icon,size: 30,color:index==0?_appcolor.blueish: Colors.grey,),
                              Text(menulist[index].title,style:  TextStyle(color:index==0?_appcolor.blueish: Colors.grey,fontSize: 20,fontWeight: FontWeight.normal),),
                            ],
                          ),
                        ),
                      )
                    ),
                  );

                }else{
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(menulist[index].icon,size: 30,color:index==0?_appcolor.blueish: Colors.grey,),
                      title: Text(menulist[index].title,style:  TextStyle(color:index==0?_appcolor.blueish: Colors.grey,fontSize: 20,fontWeight: FontWeight.normal),),
                    ),
                  );
                }

              }

              else{
              return Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(menulist[index].icon,size: 30,color:index==0?_appcolor.blueish: Colors.grey,),
                  title: ShadowText(menulist[index].title,style:  TextStyle(color:index==0?_appcolor.blueish: Colors.grey,fontSize: 20,fontWeight: FontWeight.normal),color: index==0?_appcolor.blueish: Colors.grey,),
                ),
              );}

              } )
        ],
      ),
    );
  }
}
class SideRail extends StatelessWidget {
  const SideRail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColours  _appcolor =AppColours();
    AppStrings _appstrings=AppStrings();
    return Container(
      padding:const  EdgeInsets.all(15),
      color: Colors.white,
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                margin:const  EdgeInsets.only(right: 10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color:_appcolor.bluegreen,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color:_appcolor.bluegreen.withOpacity(0.5),
                          offset: const Offset(2,2),
                          blurRadius: 2

                      ),

                    ]

                ),
                child:const  Icon(Icons.cloud_upload_outlined,color: Colors.white,),
              ),


            ],
          ),
          const  SizedBox(height: 40,),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: menulist.length,

              itemBuilder:(context,index){
                return Padding(
                padding: const EdgeInsets.only(top: 40),
                   child:Icon(menulist[index].icon,size: 30,color:index==0?_appcolor.blueish: Colors.grey,));


            }),

        ],
      ),
    );
  }
}
