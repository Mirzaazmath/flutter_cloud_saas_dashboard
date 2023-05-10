import 'package:cloud_saas_web/components/sidebar.dart';
import 'package:flutter/material.dart';

import '../../components/bodywidget.dart';
import '../../components/rightpanel.dart';
class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Container(
          width: 250,
          child: SideBar(),
        ),
        Expanded(child: Container(

          child: BodyWidget(),
        )),
        Container(
          width: 350,
          child: RightPanelWidget(),
        )

      ],
    );
  }
}
