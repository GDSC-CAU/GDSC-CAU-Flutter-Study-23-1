import 'package:flutter/material.dart';

class page2_Popular extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String num;
  final String money;
  final Color boxColor;

  const page2_Popular({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.num,
    required this.money,
    required this.boxColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 80.0,
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: const DecorationImage(
                  image: AssetImage('assets/LED1.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  text2,
                  style: const TextStyle(
                    fontSize: 10.0,
                    color: Colors.black12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  text3,
                  style: const TextStyle(
                    fontSize: 10.0,
                    color: Colors.black12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                 children: [
                   Text(
                     num,
                     style: const TextStyle(
                       fontSize: 15.0,
                       color: Colors.blue,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   const SizedBox(width: 10),
                   Text(
                     money,
                     style: const TextStyle(
                       fontSize: 15.0,
                       color: Colors.blue,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                 ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
