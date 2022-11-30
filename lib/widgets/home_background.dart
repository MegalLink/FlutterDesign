import 'dart:math';

import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({super.key});
  final _boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          stops: [0.2, 0.8],
          end: Alignment.bottomCenter,
          colors: [Color(0xff2E305F), Color(0xff202333)]));
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: _boxDecoration,
        ),
        const Positioned(top: -100, left: -30, child: _DecotarionBox())
      ],
    );
  }
}

class _DecotarionBox extends StatelessWidget {
  const _DecotarionBox();

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(251, 142, 171, 1)
            ])),
      ),
    );
  }
}
