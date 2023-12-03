import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture App UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Colors.white,
        ),
      ),
      home: const FurnitureApp(),
    );
  }
}

// pageView 구현하기
class FurnitureApp extends StatelessWidget {
  const FurnitureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Center',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                statisticCard(),
                const SizedBox(height: 20),
                featureList(),
                const SizedBox(height: 20),
                settingsList(context),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Furniture',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.shopping_cart_checkout),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 7),
                SizedBox(
                  height: 90,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      iconCard(Icons.monitor, Colors.blue),
                      iconCard(Icons.account_balance_wallet, Colors.grey),
                      iconCard(Icons.security, Colors.grey),
                      iconCard(Icons.message, Colors.grey),
                      iconCard(Icons.monetization_on, Colors.grey),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Modern',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Good quality item',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 350,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      productCard('lib/tt.jpg', 'Landscape', '384', 250.0, 300),
                      productCard(
                          'lib/tt.jpg', 'Discus Pendant', '274', 200.0, 240),
                      productCard(
                          'lib/tt.jpg', 'Discus Pendant', '274', 200.0, 240),
                      productCard(
                          'lib/tt.jpg', 'Discus Pendant', '274', 200.0, 240),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Popular',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'In recent month',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // 둥근 모서리
                    color: Colors.white, // 백그라운드 색상
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'lib/tt.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Aerial Pendant',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'Our Lighting collection is sure to add the desired style to',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                '196 USD',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.arrow_forward_ios),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  productCard(String imagePath, String name, String price, double width,
      double height) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.all(15),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover, // 이미지를 컨테이너에 꽉 채움
              ),
            ),
          ),
          Positioned(
            bottom: -20, // 카드를 이미지 하단으로부터 20픽셀 떨어트림
            child: Card(
              elevation: 25,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                width: width / 1.5, // 카드 너비
                // height: height / 2, // 카드 높이
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: width / 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4), // 이름과 가격 사이 간격
                    Text(
                      'Matter made',
                      style: TextStyle(
                        fontSize: width / 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15), // 이름과 가격 사이 간격
                    Row(
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                            fontSize: width / 9,
                            color: Colors.blue,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 4), // 가격과 단위 사이 간격(4픽셀
                        Text(
                          'USD',
                          style: TextStyle(
                            fontSize: width / 12,
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget iconCard(IconData icon, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Transform.rotate(
        angle: pi / 4,
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            color: color,
            shape: BoxShape.rectangle,
          ),
          child: Transform.rotate(
            angle: -pi / 4,
            child: Align(
              alignment: Alignment.center,
              child: Center(
                child: Icon(icon, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget statisticCard() {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 10, 2, 162).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      margin: const EdgeInsets.all(15.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            userRow(),
            const SizedBox(height: 20.0),
            statisticRow(),
          ],
        ),
      ),
    );
  }

  Widget userRow() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 20.0),
        CircleAvatar(
          backgroundImage: AssetImage('lib/tt.jpg'),
          radius: 30.0,
        ),
        SizedBox(width: 15.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mausam Rayamajhi',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'A trendsetter',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget statisticRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        statisticItem('846', 'Collect'),
        statisticItem('51', 'Attention'),
        statisticItem('267', 'Track'),
        statisticItem('39', 'Coupons'),
      ],
    );
  }

  Widget statisticItem(String value, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(label, style: const TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget featureList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          featureItem(Icons.account_balance_wallet, 'Wallet'),
          featureItem(Icons.local_shipping, 'Delivery'),
          featureItem(Icons.message, 'Message'),
          featureItem(Icons.build, 'Service'),
        ],
      ),
    );
  }

  Widget featureItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 192, 192, 192),
          ),
          child: IconButton(
            icon: Icon(icon),
            onPressed: () {},
          ),
        ),
        const SizedBox(height: 7.0),
        Text(label),
      ],
    );
  }

  // Widget featureItemWithBadge(
  //     IconData icon, String label, String badgeContent) {
  //   return Column(
  //     mainAxisSize: MainAxisSize.min,
  //     children: [
  //       Stack(
  //         alignment: Alignment.topRight,
  //         children: [
  //           IconButton(
  //             icon: Icon(icon),
  //             onPressed: () {},
  //           ),
  //           if (badgeContent.isNotEmpty)
  //             CircleAvatar(
  //               radius: 10.0,
  //               backgroundColor: Colors.blue,
  //               child: Text(
  //                 badgeContent,
  //                 style: const TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 12.0,
  //                 ),
  //               ),
  //             ),
  //         ],
  //       ),
  //       Text(label),
  //     ],
  //   );
  // }

  Widget settingsList(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          settingsCard(Icons.location_on, 'Address',
              'Ensure your harvesting address', Colors.purple, context),
          settingsCard(Icons.lock, 'Privacy', 'System permission change',
              Colors.pink, context),
          settingsCard(Icons.settings, 'General', 'Basic functional settings',
              Colors.orange, context),
          settingsCard(Icons.notifications, 'Notification',
              'Take over the news in time', Colors.blue, context),
        ],
      ),
    );
  }

  Widget settingsCard(IconData icon, String title, String subtitle,
      Color iconBgColor, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 3, 47, 244).withOpacity(0.2),
            spreadRadius: 8,
            blurRadius: 10.0,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: iconBgColor,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      ),
    );
  }
}
