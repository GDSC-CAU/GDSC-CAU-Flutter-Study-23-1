import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String name, hint;
  final IconData icon;

  const InfoCard({
    super.key,
    required this.name,
    required this.hint,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              padding: const EdgeInsets.all(9),
              child: Icon(
                icon,
                size: 40,
              ),
            ),
            const SizedBox(width: 3),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Text(
                  hint,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                )
              ],
            ),
            const Icon(Icons.navigate_next)
          ],
        ),
      ),
    );
  }
}
