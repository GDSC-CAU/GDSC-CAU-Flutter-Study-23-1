import 'package:flutter/material.dart';

class page2_blueicon extends StatelessWidget {
  final IconData icon;
  final double width;
  final double height;

  const page2_blueicon({
    Key? key,
    required this.icon,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.blue,
      ),
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
