import 'package:flutter/material.dart';

import '../../components/bodywidget.dart';
import '../../components/rightpanel.dart';
import '../../components/sidebar.dart';
class MediumScreen extends StatelessWidget {
  const MediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size.width;
    print(size);
    return Row(

      children: [
        Container(
          width: 80,
          child:SideRail()
        ),
        Expanded(child: Container(

          child: BodyWidget(),
        )),
      size<=1160?Container():  Container(
          width: 300,
          child: RightPanelWidget(),
        )

      ],
    );
  }
}