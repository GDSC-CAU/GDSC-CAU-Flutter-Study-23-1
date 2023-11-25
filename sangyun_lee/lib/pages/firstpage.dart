import 'package:flutter/material.dart';
import 'package:sangyun_lee/widgets/listitem.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blueAccent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    blurRadius: 5.0,
                    spreadRadius: 0.0,
                    offset: const Offset(0, 7),
                  )
                ]),
            height: 175,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: const SizedBox(
                            height: 75,
                            width: 75,
                            child: Image(
                              image: AssetImage("images/woman.jpg"),
                              fit: BoxFit.fill,
                            )),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sangyun lee",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Software Engineer",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                      color: Colors.white,
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "846",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Collect",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "51",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Attention",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "267",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Track",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "39",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Coupons",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200,
                    ),
                    child: const Icon(Icons.account_balance_wallet),
                  ),
                  const Text("Wallet"),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200,
                    ),
                    child: const Icon(Icons.airport_shuttle_sharp),
                  ),
                  const Text("Delivery"),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200,
                    ),
                    child: const Icon(Icons.message),
                  ),
                  const Text("Message"),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200,
                    ),
                    child: const Icon(Icons.attach_money_sharp),
                  ),
                  const Text("Service"),
                ],
              ),
            ],
          ),
        ),
        ListItem(
          title: "Address",
          description: "Ensure your harvesting address",
          iconData: Icons.location_on,
          iconColor: Colors.deepPurpleAccent.shade100,
        ),
        ListItem(
          title: "Privacy",
          description: "System permission change",
          iconData: Icons.lock,
          iconColor: Colors.pinkAccent.shade100,
        ),
        const ListItem(
          title: "General",
          description: "Basic function settings",
          iconData: Icons.layers,
          iconColor: Colors.yellow,
        ),
        ListItem(
          title: "Notification",
          description: "Take over the news in time",
          iconData: Icons.notifications,
          iconColor: Colors.greenAccent.shade100,
        ),
      ],
    );
  }
}
