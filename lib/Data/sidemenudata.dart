import 'package:cloud_saas_web/constants/appstrings.dart';
import 'package:flutter/material.dart';
AppStrings appStrings=AppStrings();

class MenuItem{
  String title;
  IconData icon;
  MenuItem({required this.title,required this.icon});
}


List<MenuItem>menulist=[
  MenuItem(title:appStrings.dashboard,icon:Icons.home_outlined ),
  MenuItem(title:appStrings.myfolder,icon:Icons.folder_outlined ),
  MenuItem(title:appStrings.favroite,icon:Icons.favorite_border ),
  MenuItem(title:appStrings.recyclebin,icon:Icons.delete_outlined ),
  MenuItem(title:appStrings.shared,icon:Icons.share_outlined ),
  MenuItem(title:appStrings.setting,icon:Icons.settings_outlined ),
  MenuItem(title:appStrings.importfile,icon:Icons.download_outlined ),
  MenuItem(title:appStrings.logout,icon:Icons.logout_outlined ),

];