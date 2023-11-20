import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/info_card.dart';
import 'package:furniture_app/widgets/profile_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Center',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 38,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ProfileCard(),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [],
              ),
              InfoCard(
                  icon: Icons.location_on,
                  name: 'Address',
                  hint: 'Ensure your harvesting address'),
              SizedBox(
                height: 20,
              ),
              InfoCard(
                  icon: Icons.lock,
                  name: 'Privacy',
                  hint: 'System permission change'),
              SizedBox(
                height: 20,
              ),
              InfoCard(
                  icon: Icons.layers,
                  name: 'Gerneral',
                  hint: 'EBasic functional settings'),
              SizedBox(
                height: 20,
              ),
              InfoCard(
                  icon: Icons.notifications,
                  name: 'Notification',
                  hint: 'Take over the news'),
            ],
          ),
        ),
      ),
    );
  }
}
