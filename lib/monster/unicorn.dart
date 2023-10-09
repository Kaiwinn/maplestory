import 'package:flutter/material.dart';
import 'dart:math';

class YellowUncorn extends StatelessWidget {
  final int iniSpriteCount;
  final String uniDirection;

  YellowUncorn({
    this.iniSpriteCount = 1,
    this.uniDirection = 'right',
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    if (uniDirection == 'right') {
      return Container(
        alignment: Alignment.bottomCenter,
        height: height * 0.05,
        child: Image.asset(
          'assets/a/' + iniSpriteCount.toString() + '.png',
        ),
      );
    } else {
      return Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(pi),
          child: Container(
            alignment: Alignment.bottomCenter,
            height: height * 0.05,
            width: width * 0.05,
            child: Image.asset(
              'assets/a/' + iniSpriteCount.toString() + '.png',
            ),
          ));
    }
  }
}
