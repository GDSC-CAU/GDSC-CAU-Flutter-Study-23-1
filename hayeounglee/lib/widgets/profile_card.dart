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
              Icon(Icons.person, size: 70, color: Colors.white),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hayeoung Lee',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.border_color,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                  Text(
                    'A person',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    '846',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Collect',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    '51',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Attention',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    '267',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Track',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    '39',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Coupons',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
