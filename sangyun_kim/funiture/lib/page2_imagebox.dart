import 'package:flutter/material.dart';

class page2_imagebox extends StatelessWidget {
  final String title;
  final String subtitle;
  final String num;
  final String money;
  final Color boxcolor;

  const page2_imagebox({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.num,
    required this.money,
    required this.boxcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          color: boxcolor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.black12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      num,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      money,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            )
        ),
    );
  }
}