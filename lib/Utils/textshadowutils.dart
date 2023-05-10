
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ShadowText extends StatelessWidget {
  ShadowText(this.data, { required this.style ,required this.color}) : assert(data != null);

  final String data;
  final TextStyle style;
  final Color color;

  Widget build(BuildContext context) {
    return  ClipRect(
      child:  Stack(
        children: [
           Positioned(
            top: 2.0,
            left: 2.0,
            child:  Text(
              data,
              style: style.copyWith(color: color.withOpacity(0.4)),
            ),
          ),
           BackdropFilter(
            filter:  ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child:  Text(data, style: style),
          ),
        ],
      ),
    );
  }
}