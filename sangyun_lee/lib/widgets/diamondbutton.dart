import 'dart:math' as math;

import 'package:flutter/material.dart';

class DiamondButton extends StatelessWidget {
  final Icon _icon;
  const DiamondButton({super.key, required icon}) : _icon = icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 50.0,
        top: 8.0,
      ),
      child: Transform.rotate(
        angle: -math.pi / 4,
        child: Container(
          width: 50,
          height: 50,
          color: Colors.grey.shade300,
          child: Transform.rotate(
            angle: math.pi / 4,
            child: IconButton(
              onPressed: () {},
              icon: _icon,
              color: Colors.grey.shade500,
            ),
          ),
        ),
      ),
    );
  }
}
