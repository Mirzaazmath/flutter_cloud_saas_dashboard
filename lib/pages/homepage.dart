import 'package:cloud_saas_web/pages/smallScreen/smallScreen.dart';
import 'package:flutter/material.dart';

import '../Responsiveness/screenresponsiveness.dart';
import 'largeScreen/largeScreen.dart';
import 'mediumScreen/mediumScreen.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:  Responsivness(largeScreenWidget: const LargeScreen(), mediumScreenWidget: const MediumScreen(),smallScreenWidget: const SmallScreen(),),
    );
  }
}
