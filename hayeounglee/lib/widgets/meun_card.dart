import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String name;
  final IconData icon;

  const MenuCard({
    required this.name,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            padding: const EdgeInsets.all(9),
            child: Icon(
              icon,
              size: 23,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
          ),
        ],
      ),
    );
  }
}
