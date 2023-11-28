import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final Color circleBackgroundColor;
  final TextStyle textStyle;

  const IconWithText({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
    required this.circleBackgroundColor,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: circleBackgroundColor,
          ),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }
}
