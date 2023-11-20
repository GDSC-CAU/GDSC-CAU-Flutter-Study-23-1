import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/info_card.dart';
import 'package:furniture_app/widgets/meun_card.dart';
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
            horizontal: 40,
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
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              ProfileCard(),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MenuCard(name: 'Wallet', icon: Icons.account_balance_wallet),
                  MenuCard(name: 'Delivery', icon: Icons.local_shipping),
                  MenuCard(name: 'Message', icon: Icons.message),
                  MenuCard(name: 'Service', icon: Icons.money)
                ],
              ),
              SizedBox(
                height: 15,
              ),
              InfoCard(
                  color: Colors.purple,
                  icon: Icons.location_on,
                  name: 'Address',
                  hint: 'Ensure your harvesting address'),
              SizedBox(
                height: 20,
              ),
              InfoCard(
                  color: Colors.red,
                  icon: Icons.lock,
                  name: 'Privacy',
                  hint: 'System permission change'),
              SizedBox(
                height: 20,
              ),
              InfoCard(
                  color: Colors.yellow,
                  icon: Icons.layers,
                  name: 'Gerneral',
                  hint: 'EBasic functional settings'),
              SizedBox(
                height: 20,
              ),
              InfoCard(
                  color: Colors.lightGreen,
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
