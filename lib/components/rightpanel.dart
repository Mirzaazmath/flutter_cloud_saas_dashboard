import 'package:cloud_saas_web/components/textcomponents.dart';
import 'package:flutter/material.dart';

import '../Data/rightpaneldata.dart';
import '../constants/appstrings.dart';
import '../constants/colors.dart';
class RightPanelWidget extends StatelessWidget {
  const RightPanelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColours  _appcolor =AppColours();
    AppStrings _appstrings=AppStrings();
    return Container(
      padding:const  EdgeInsets.all(15),
      color: Colors.white,
      child: ListView(
        children: [
        const   ListTile(

            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/profile.png",),
            ),
            title: Text("Dev 73arner (Mirza)",style: TextStyle(fontWeight: FontWeight.bold,),),
            subtitle: Text("dev_73near@gmail.com"),
            trailing: Icon(Icons.expand_more),
          ),
          const    SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Heading3("Storage"),
              const Icon(Icons.more_horiz,color: Colors.grey,)
            ],
          ),

          Container(
            padding:const  EdgeInsets.all(20),
            height: 100,
           
            child: const LinearProgressIndicator(

              value: 0.55,
              color: Color(0xff4bb2f5),
              backgroundColor: Color(0xffeff8fe),

            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Heading2("70"),
             const  SizedBox(width: 5,),
              const Text("GB")
            ],
          ),
           Center(child:  Minigrey("Used",)),
      const    SizedBox(height: 20,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Column(
               children: [
                 Minigrey("Total Space"),
                 const   SizedBox(height: 5,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Heading2("120"),
                     const  SizedBox(width: 5,),
                     const Text("GB")
                   ],
                 ),
               ],
             ),
             Column(
               children: [
                 Minigrey("Used Space"),
                 const   SizedBox(height: 5,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Heading2("80"),
                     const  SizedBox(width: 5,),
                     const Text("GB")
                   ],
                 ),
               ],
             ),
           ],
         ),
        const   SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Heading2(_appstrings.recentfile),
               Miniblue("See More",)
            ],
          ),
        const   SizedBox(height: 20,),
          ListView.builder(
            shrinkWrap: true,
              itemCount: rightpanellist.length,
              itemBuilder: (context,index){
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Card(
                    shadowColor: Colors.grey.shade300,
                    elevation: 3,
                    child: ListTile(
                      leading: Icon(rightpanellist[index].icon,color:rightpanellist[index].color ,),
                      title:Heading3(rightpanellist[index].title) ,
                      subtitle: Minigrey(rightpanellist[index].file),
                      trailing: Miniblue(rightpanellist[index].size),
                    ),
                  ),
                ),
              );

          })


        ],

      ),
    );

  }
}
