import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/info_card.dart';

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
                height: 20,
              ),
              InfoCard(name: 'Address', hint: 'Ensure your harvesting address'),
              SizedBox(
                height: 20,
              ),
              InfoCard(name: 'Privacy', hint: 'System permission change'),
              SizedBox(
                height: 20,
              ),
              InfoCard(name: 'Gerneral', hint: 'EBasic functional settings'),
              SizedBox(
                height: 20,
              ),
              InfoCard(name: 'Notification', hint: 'Take over the news'),
            ],
          ),
        ),
      ),
    );
  }
}
