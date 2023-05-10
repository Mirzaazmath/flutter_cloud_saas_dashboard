import 'package:cloud_saas_web/Responsiveness/screenresponsiveness.dart';
import 'package:cloud_saas_web/components/sidebar.dart';
import 'package:cloud_saas_web/components/textcomponents.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../Data/dashboarddata.dart';
class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size.width;
    return Scaffold(

      /// Appbar
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text("DashBoard",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              style:  ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                foregroundColor:  MaterialStateProperty.all<Color>(Colors.black),
              ),

                onPressed: (){},
                icon:const Icon(Icons.search),
              label: const Text("Search"),
                 ),
          ),
        size<=1160?const  Padding(padding: EdgeInsets.all(10),
         child:  Icon(Icons.more_vert),):Container()
          
        ],
        
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: const  EdgeInsets.all(20),
          child: Column(
            children: [
              /// first row
              Row(
                children: [
                 DottedBorder(
                 color: Colors.deepPurple,
                   child: Container(

                     height: 100,
                     width: 100,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         const  Icon(Icons.add,color: Colors.grey,),
                         Minigrey("Add new\n Folder"),

                       ],
                     ),
                   ),
                 ),

                  Expanded(
                    child: GridView.count(
                      shrinkWrap: true,
                      primary: false,

                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1/1.3,
                      // childAspectRatio: 1/1,
                      crossAxisCount: 4,
                      children:dashboardlist.map((e) => Container(
                            padding: const EdgeInsets.all(15),
                            margin:const  EdgeInsets.only(left: 15),
                            height: 230,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: e.color,
                              boxShadow: [
                                BoxShadow(
                                  color:e.color.withOpacity(0.5),
                                  offset: const Offset(2,2),
                                  blurRadius: 10
                                )
                              ]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Icon(e.icon,color: e.color,),
                                    ),
                                   const  Icon(Icons.more_vert,color: Colors.white,)
                                  ],
                                ),
                              const   SizedBox(height: 10,),
                                Text(e.title,style:  TextStyle(color: Colors.white70,fontSize:size<830?16: 20,fontWeight: FontWeight.bold),),

                                Text(e.size,style:const  TextStyle(color: Colors.white70,fontSize: 18,fontWeight: FontWeight.bold),),
                                const   SizedBox(height: 10,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: LinearProgressIndicator(
                                    value:e.persent,
                                    minHeight: 10,
                                    color: Colors.white,
                                    backgroundColor: Colors.white.withOpacity(0.2),

                                  ),
                                )

                              ],
                            ),
                          ), ).toList(),

                    ),
                  ),

                ],
              ),
            const   SizedBox(height: 50,),

              /// folder row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Heading2("Folders"),
                  Miniblue("View All")
                ],
              ),
              const   SizedBox(height: 20,),
              GridView.count(
                shrinkWrap: true,
                primary: false,

                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 18/10,
                crossAxisCount: 3,
                children:folderlist.map((e) =>Card(
                

                  child: Container(
                    padding: const EdgeInsets.all(8),

                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height:size<830? 30:40,
                              width:size<830? 30:40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    offset:  const Offset(3,3),
                                    blurRadius: 5
                                  )
                                ]
                              ),
                              child: const Icon(Icons.folder_outlined,color: Colors.teal,),
                            ),
                            Container(
                              width: 80,
                              child: Stack(
                                children:const  [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor:  Color(0xff3bc1fe),

                                  ),
                                  Positioned(
                                      left:22,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Color(0xfffea444),

                                      )),
                                  Positioned(
                                      left:45,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor:Color(0xff5579ff),

                                      )),

                                ],
                              ),
                            )
                          ],
                        ),
                        Heading3(e.title),
                        Minigrey(e.file),
                        Row(children: [
                         const  Icon(Icons.schedule,color: Colors.grey,size: 20,),
                       const    SizedBox(width: 5,),
                          Expanded(child: Minigrey("Last Changes ${e.lastseen}")),

                        ],)
                      ],
                    )
                  ),
                ), ).toList(),
              
              ),
              const SizedBox(height: 30,),
              /// datatable
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Heading2("Recent Uploads"),
                   Minigrey("View All")
                              ],
                            ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Expanded(child: Center(child: Minigrey("Name"))),
                  Expanded(child: Center(child: Minigrey("Size"))),
                  Expanded(child: Center(child: Minigrey("Last Modified"))),
                  Expanded(child: Center(child: Minigrey("Share With")))
                ],
              ),
             const  SizedBox(height: 20,),
              for(int i=0;i<recentuploadlist.length;i++)...[
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Expanded(child:ListTile(leading: Container(
                          padding: const EdgeInsets.all(5),

                          color: recentuploadlist[i].color.withOpacity(0.1),
                          child: Icon(recentuploadlist[i].icon,color:recentuploadlist[i].color ,),

                        ),
                          title: Heading4(recentuploadlist[i].title),
                        )),
                        Expanded(child: Center(child: Minigrey(recentuploadlist[i].size))),
                        Expanded(child: Center(child: Minigrey(recentuploadlist[i].date))),
                        Expanded(child: Center(child: Heading4(recentuploadlist[i].shareno)))
                      ],
                    ),
                  ),
                ),
              ]



            ],
          ),
      ),
      ),
    );
  }
}
