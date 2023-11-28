import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15.0, top: 10.0),
                child: Text(
                  'Center',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.all(20),
                width: 500,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueAccent,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7)
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey),
                          child: Image.network(
                              'https://picsum.photos/250?image=9'),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mausam Rayamajhi',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'A Trendsetter',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            )
                          ],
                        ),
                        const Icon(
                          Icons.edit,
                          color: Colors.white,
                        )
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              '846',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'collect',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '51',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Attention',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '267',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Track',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '39',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Coupons',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: const Icon(Icons.wallet)),
                  Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: const Icon(Icons.delivery_dining)),
                  Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: const Icon(Icons.message)),
                  Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: const Icon(Icons.money_outlined)),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Wallet'),
                  Text('Delivery'),
                  Text('Message'),
                  Text('Service')
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 500,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 15,
                            offset: const Offset(10, 10),
                            color: Colors.blue.withOpacity(0.3))
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 45,
                                height: 45,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.purple,
                                ),
                                child: const Icon(
                                  Icons.map,
                                  color: Colors.white,
                                )),
                            const SizedBox(width: 50),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Adress',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500)),
                                Text(
                                  'Eunsure your harvesting adress',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 500,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 15,
                            offset: const Offset(10, 10),
                            color: Colors.blue.withOpacity(0.3))
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 45,
                                height: 45,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.pinkAccent,
                                ),
                                child: const Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                )),
                            const SizedBox(width: 50),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Privacy',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500)),
                                Text(
                                  'System permission change',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 500,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 15,
                            offset: const Offset(10, 10),
                            color: Colors.blue.withOpacity(0.3))
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 45,
                                height: 45,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.yellow,
                                ),
                                child: const Icon(
                                  Icons.message,
                                  color: Colors.white,
                                )),
                            const SizedBox(width: 50),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('General',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500)),
                                Text(
                                  'Basic functional settings',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 500,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 15,
                            offset: const Offset(10, 10),
                            color: Colors.blue.withOpacity(0.3))
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 45,
                                height: 45,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.greenAccent,
                                ),
                                child: const Icon(
                                  Icons.alarm,
                                  color: Colors.white,
                                )),
                            const SizedBox(width: 50),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Notification',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500)),
                                Text(
                                  'Take over the news in time',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
