import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(25)),
      padding: const EdgeInsets.all(20),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.person),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Hayoung', style: TextStyle(fontSize: 20)),
                  Text('A person')
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [Text('846'), Text('Collect')],
              ),
              Column(
                children: [Text('51'), Text('Attention')],
              ),
              Column(
                children: [Text('267'), Text('Track')],
              ),
              Column(
                children: [Text('39'), Text('Coupons')],
              ),
            ],
          )
        ],
      ),
    );
  }
}
