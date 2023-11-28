import 'package:flutter/material.dart';
import 'package:funiture/page2_Popular.dart';
import 'package:funiture/page2_blueicon.dart';
import 'package:funiture/profile.dart';
import 'package:funiture/icon.dart';
import 'package:funiture/box.dart';
import 'package:funiture/page2_icon.dart';
import 'package:funiture/page2_imagebox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Center',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 34,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Profile(
                        name: 'Kim Sang Yun',
                        major: 'Electronic and Electrical Engineering',
                        icon: Icons.edit,
                        bgColor: Colors.blue,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconWithText(
                          icon: Icons.wallet,
                          text: 'Wallet',
                          textStyle: const TextStyle(fontWeight: FontWeight.bold),
                          iconColor: Colors.black,
                          circleBackgroundColor: Colors.grey.withOpacity(0.2),
                        ),
                        IconWithText(
                          icon: Icons.fire_truck_rounded,
                          text: 'Delivery',
                          textStyle: const TextStyle(fontWeight: FontWeight.bold),
                          iconColor: Colors.black,
                          circleBackgroundColor: Colors.grey.withOpacity(0.2),
                        ),
                        IconWithText(
                          icon: Icons.message,
                          text: 'Message',
                          textStyle: const TextStyle(fontWeight: FontWeight.bold),
                          iconColor: Colors.black,
                          circleBackgroundColor: Colors.grey.withOpacity(0.2),
                        ),
                        IconWithText(
                          icon: Icons.money,
                          text: 'Service',
                          textStyle: const TextStyle(fontWeight: FontWeight.bold),
                          iconColor: Colors.black,
                          circleBackgroundColor: Colors.grey.withOpacity(0.2),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Column(
                      children: [
                        Box(
                          text1: 'Address',
                          text2: 'Ensure your harvesting address',
                          icon: Icons.add_location_rounded,
                          iconColor: Colors.white,
                          circleBackgroundColor: Colors.purple,
                          boxColor: Colors.white,
                        ),
                        SizedBox(height: 20),
                        Box(
                          text1: 'Privacy',
                          text2: 'System permission change',
                          icon: Icons.lock,
                          iconColor: Colors.white,
                          circleBackgroundColor: Colors.pink,
                          boxColor: Colors.white,
                        ),
                        SizedBox(height: 20),
                        Box(
                          text1: 'General',
                          text2: 'Basic functional settings',
                          icon: Icons.sticky_note_2_outlined,
                          iconColor: Colors.white,
                          circleBackgroundColor: Colors.yellow,
                          boxColor: Colors.white,
                        ),
                        SizedBox(height: 20),
                        Box(
                          text1: 'Notification',
                          text2: 'Take over the news in time',
                          icon: Icons.notifications,
                          iconColor: Colors.white,
                          circleBackgroundColor: Colors.green,
                          boxColor: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Furniture',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Icon(
                          Icons.add_shopping_cart_outlined,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          page2_icon(
                            icon: Icons.monitor,
                            iconColor: Colors.grey,
                            BackgroundColor: Colors.grey.withOpacity(0.2),
                            size: 40,
                          ),
                          page2_icon(
                            icon: Icons.wallet,
                            iconColor: Colors.grey,
                            BackgroundColor: Colors.grey.withOpacity(0.2),
                            size: 40,
                          ),
                          page2_icon(
                            icon: Icons.security,
                            iconColor: Colors.grey,
                            BackgroundColor: Colors.grey.withOpacity(0.2),
                            size: 40,
                          ),
                          page2_icon(
                            icon: Icons.message,
                            iconColor: Colors.grey,
                            BackgroundColor: Colors.grey.withOpacity(0.2),
                            size: 40,
                          ),
                          page2_icon(
                            icon: Icons.money,
                            iconColor: Colors.grey,
                            BackgroundColor: Colors.grey.withOpacity(0.2),
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Modern',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Good quality item',
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.5),
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 200.0,
                                height: 330.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Container(
                                        width: 180.0,
                                        height: 250.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16.0),
                                          image: const DecorationImage(
                                            image: AssetImage('assets/LED1.jpeg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 220,
                                      child: page2_imagebox(
                                        title: 'LED1',
                                        subtitle: 'Matter made',
                                        num: '384',
                                        money: 'USD',
                                        boxcolor: Color(0XFFE7E9EF),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 130,
                                      top: 270,
                                      child: page2_blueicon(
                                        icon: Icons.arrow_right_alt,
                                        width: 40.0,
                                        height: 40.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 200.0,
                                height: 330.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Container(
                                        width: 180.0,
                                        height: 250.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16.0),
                                          image: const DecorationImage(
                                            image: AssetImage('assets/LED2.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 220,
                                      child: page2_imagebox(
                                        title: 'LED2',
                                        subtitle: 'Matter made',
                                        num: '274',
                                        money: 'USD',
                                        boxcolor: Color(0XFFE7E9EF),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 130,
                                      top: 270,
                                      child: page2_blueicon(
                                        icon: Icons.arrow_right_alt,
                                        width: 40.0,
                                        height: 40.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 200.0,
                                height: 330.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Container(
                                        width: 180.0,
                                        height: 250.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16.0),
                                          image: const DecorationImage(
                                            image: AssetImage('assets/LED3.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 220,
                                      child: page2_imagebox(
                                        title: 'LED3',
                                        subtitle: 'Matter made',
                                        num: '374',
                                        money: 'USD',
                                        boxcolor: Color(0XFFE7E9EF),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 130,
                                      top: 270,
                                      child: page2_blueicon(
                                        icon: Icons.arrow_right_alt,
                                        width: 40.0,
                                        height: 40.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 15),
                              Container(
                                width: 200.0,
                                height: 330.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Container(
                                        width: 180.0,
                                        height: 250.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16.0),
                                          image: const DecorationImage(
                                            image: AssetImage('assets/LED4.jpeg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 220,
                                      child: page2_imagebox(
                                        title: 'LED4',
                                        subtitle: 'Matter made',
                                        num: '105',
                                        money: 'USD',
                                        boxcolor: Color(0XFFE7E9EF),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 130,
                                      top: 270,
                                      child: page2_blueicon(
                                        icon: Icons.arrow_right_alt,
                                        width: 40.0,
                                        height: 40.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 15),
                              Container(
                                width: 200.0,
                                height: 330.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Container(
                                        width: 180.0,
                                        height: 250.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16.0),
                                          image: const DecorationImage(
                                            image: AssetImage('assets/LED5.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 220,
                                      child: page2_imagebox(
                                        title: 'LED5',
                                        subtitle: 'Matter made',
                                        num: '365',
                                        money: 'USD',
                                        boxcolor: Color(0XFFE7E9EF),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 130,
                                      top: 270,
                                      child: page2_blueicon(
                                        icon: Icons.arrow_right_alt,
                                        width: 40.0,
                                        height: 40.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Popular',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'In recent month',
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.5),
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 150.0,
                      width: 480,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            top: 10,
                              child: Container(
                                height: 100.0,
                                width: 440,
                                color: Colors.white,
                                child: const page2_Popular(
                                  text1: 'Aerial Pendant',
                                  text2: 'Our Lighting collection is sure to',
                                  text3: 'add the desired style to',
                                  num: '196',
                                  money: 'USD',
                                  boxColor: Colors.white,
                                ),
                              ),
                          ),
                          const Positioned(
                            left: 426,
                            top: 50,
                            child: page2_blueicon(
                              icon: Icons.arrow_right_alt,
                              width: 40.0,
                              height: 40.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
