import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:sangyun_lee/widgets/diamondbutton.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 50.0,
                        left: 20.0,
                        top: 8.0,
                      ),
                      child: Transform.scale(
                        scale: 1.3,
                        child: Transform.rotate(
                          angle: -math.pi / 4,
                          child: Container(
                            width: 50,
                            height: 50,
                            color: Colors.blueAccent,
                            child: Transform.rotate(
                              angle: math.pi / 4,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.monitor),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DiamondButton(
                        icon: Icon(Icons.account_balance_wallet)),
                    const DiamondButton(icon: Icon(Icons.shield_moon)),
                    const DiamondButton(icon: Icon(Icons.comment)),
                    const DiamondButton(icon: Icon(Icons.backpack)),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Modern",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Good quality item",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
