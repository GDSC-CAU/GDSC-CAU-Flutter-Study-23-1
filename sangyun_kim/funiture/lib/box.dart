import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final String text1;
  final String text2;
  final IconData icon;
  final Color iconColor;
  final Color boxColor;
  final Color circleBackgroundColor;

  const Box({
    Key? key,
    required this.text1,
    required this.text2,
    required this.icon,
    required this.iconColor,
    required this.boxColor,
    required this.circleBackgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: circleBackgroundColor,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 24.0,
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 30.0,
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  text2,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
