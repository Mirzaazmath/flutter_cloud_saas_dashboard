import 'package:flutter/material.dart';
class Items{
  String title;
  String file;
  String size;
  IconData icon;
  Color color;
  Items({required this.color,required this.icon,required this.title,required this.size,required this.file});

}
List<Items>rightpanellist=[
  Items(title: "Documents",file: "250 files",size:"2.2 GB",icon: Icons.description,color:Colors.orange),
  Items(title: "Photos",file: "2340 files",size:"12.1 GB",icon: Icons.image,color:Colors.tealAccent),
  Items(title: "Videos",file: "199 files",size:"4.6 GB",icon: Icons.play_circle,color:Colors.deepOrangeAccent),
  Items(title: "Musics",file: "1832 files",size:"1.2 GB",icon: Icons.music_note,color:Colors.deepPurpleAccent),
  Items(title: "Other Files",file: "920 files",size:"22.7 GB",icon: Icons.text_snippet,color:  Colors.pink),

];