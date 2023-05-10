import 'package:flutter/material.dart';
int largescreensize=1366;
int mediumscreensize=768;
int smallscreensize=360;
class Responsivness extends StatelessWidget {
  Widget largeScreenWidget;
  Widget mediumScreenWidget;
  Widget smallScreenWidget;
  Responsivness({required this.largeScreenWidget,required this.mediumScreenWidget,required this.smallScreenWidget});

  static bool isSmallScreen(BuildContext context )=>MediaQuery.of(context).size.width<mediumscreensize;
  static bool isMediumScreen(BuildContext context)=>MediaQuery.of(context).size.width>=mediumscreensize &&   MediaQuery.of(context).size.width<largescreensize;
  static bool isLargeScreen(BuildContext context)=>MediaQuery.of(context).size.width>=largescreensize;


  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (context,constraints){
      double _width=constraints.maxWidth;
      if(_width>=largescreensize){
        return largeScreenWidget;
      }else if(_width<largescreensize &&_width>=mediumscreensize){
        return mediumScreenWidget ?? largeScreenWidget;
      }else{
        return smallScreenWidget ??largeScreenWidget;
      }

    });
  }
}
