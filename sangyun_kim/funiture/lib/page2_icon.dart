import 'package:flutter/material.dart';

class page2_icon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color BackgroundColor;
  final double size;

  const page2_icon({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.BackgroundColor,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.rotate(
          angle: 45 * (3.141592653589793 / 180), // 45도 회전
          child: Container(
            width: 60.0,
            height: 60.0,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: BackgroundColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Transform.rotate(
              angle: -45 * (3.141592653589793 / 180), // 45도 회전
              child: Icon(
                icon,
                color: iconColor,
                size: size,
              ),
            ),
          ),
        ),
        const SizedBox(width: 120),
      ],
    );
  }
}
