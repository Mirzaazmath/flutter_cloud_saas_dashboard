import 'package:flutter/material.dart';
class DashboardOverview{
  String title;
  IconData icon;
  String size;
  double persent;
  Color color;
  DashboardOverview({required this.icon,required this.size,required this.title,required this.color,required this.persent});
}
List<DashboardOverview>dashboardlist=[
  DashboardOverview(title: "Images",icon: Icons.image,size: "20 GB",persent: 0.8,color:const  Color(0xff3bc1fe)),
  DashboardOverview(title: "Media Files",icon: Icons.headphones,size: "4 GB",persent: 0.3,color:const  Color(0xfffea444)),
  DashboardOverview(title: "Document",icon: Icons.description,size: "10 GB",persent: 0.5,color:const  Color(0xff5579ff)),
  DashboardOverview(title: "Other Files",icon: Icons.article,size: "28 GB",persent: 0.65,color:const  Color(0xfffc6064))

];

class FolderItem{
  String title;
  String file;
  String lastseen;
  FolderItem({required this.title,required this.file,required this.lastseen});

}

List<FolderItem>folderlist=[
  FolderItem(title: "Dribble Assets",file: "72 File",lastseen: "yesterday"),
  FolderItem(title: "FreeLance Document",file: "43 File",lastseen: "Mar 24 2023"),
  FolderItem(title: "Data Backup",file: "154 File",lastseen: "Mar 24 2023"),
];

class Recentuploads{
  String title;
  IconData icon;
  Color color;
  String size;
  String date;
  String shareno;
  Recentuploads({required this.title,required this.size,required this.date,required this.shareno,required this.icon,required this.color});


}

List<Recentuploads>recentuploadlist=[
  Recentuploads(title: "Home",size: "12 MB",date: "Today",color:const  Color(0xff3bc1fe),icon: Icons.description,shareno: "3 Members"),
  Recentuploads(title: "The Pianist",size: "5 GB",date: "Yesterday",color:const  Color(0xfffea444),icon: Icons.videocam ,shareno: "1 Members"),
  Recentuploads(title: "IMG_038",size: "12.8 MB",date: "01/05/2023",color:const  Color(0xff5579ff),icon: Icons.image,shareno: "Only You"),
  Recentuploads(title: "University.proposal",size: "110 MB",date: "25/04/2023",color:const  Color(0xfffc6064),icon: Icons.description,shareno: "7 Members"),


];
