import 'package:flutter/material.dart';
import 'package:sangyun_lee/widgets/diamondbutton.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: 100,
              child: Row(
                children: [
                  DiamondButton(icon: Icon(Icons.monitor)),
                  DiamondButton(icon: Icon(Icons.account_balance_wallet)),
                  DiamondButton(icon: Icon(Icons.shield_moon)),
                  DiamondButton(icon: Icon(Icons.comment)),
                  DiamondButton(icon: Icon(Icons.backpack)),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Modern",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Good quality item",
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
