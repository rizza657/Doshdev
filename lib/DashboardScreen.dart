import 'package:flutter/material.dart';
import 'Home.dart';
import 'Exchange.dart';
import 'Wallet.dart';
import 'Explore.dart';
import 'Trade_GiftCards.dart';
import 'Customer_Service.dart';
import 'About_Us.dart';
import 'Join_Community.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<String> cateNames = [
    "Home",
    "Exchange",
    "Wallet",
    "Explore",
    "Trade_GiftCards",
    "Customer_Service",
    "About_Us",
    "Join_Community",
  ];

  Map<String, Widget> widgets = {
    "Home": const Home(),
    "Exchange": const Exchange(),
    "Wallet": const Wallet(),
    "Explore": const Explore(),
    "Trade_GiftCards": const Trade_GiftCards(),
    "Customer_Service": const Customer_Service(),
    "About_Us": const About_Us(),
    "Join_Community": const Join_Community(),
  };

  List<String> modifiedCateNames = [];

  @override
  void initState() {
    super.initState();
    modifiedCateNames = cateNames
        .map((name) => name.replaceAll('_', ' ').replaceAll(RegExp(r'\s+'), ' '))
        .toList();
  }

  List<Color> cateColors = [
    const Color(0XFF6FE08D),
    const Color(0xFFCB84FB),
    const Color(0xFF61BDFD),
    const Color(0xFFFC7F7F),
    const Color(0xFFCB84FB),
    const Color(0xFF78E667),
    const Color(0xFFCB06DC),
    const Color(0xFFFB987B),
  ];

  List<Icon> cateIcons = [
    const Icon(Icons.wallet, color: Colors.white, size: 35),
    const Icon(Icons.data_exploration_rounded, color: Colors.white, size: 35),
    const Icon(Icons.assignment, color: Colors.white, size: 35),
    const Icon(Icons.home_repair_service_sharp, color: Colors.white, size: 35),
    const Icon(Icons.attach_money_sharp, color: Colors.white, size: 35),
    const Icon(Icons.control_camera_sharp, color: Colors.white, size: 35),
    const Icon(Icons.account_balance, color: Colors.white, size: 35),
    const Icon(Icons.groups, color: Colors.white, size: 35),
  ];

  @override
  // made widget
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
              bottom: 10,
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3.32,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 80, 20, 194),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(70),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              padding: const EdgeInsets.all(16),
                              child: const Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircleAvatar(
                                    radius: 50,
                                    backgroundImage: AssetImage("images/yye.jpeg"),
                                  ),
                                   SizedBox(height: 16),
                                  Text(
                                    "JOSHUA NELSON",
                                    style:  TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                   SizedBox(height: 8),
                                   Text(
                                    'Logged in 2 hours ago',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        image: const DecorationImage(
                          image: AssetImage("images/dbdb.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      "JOSH EXCHANGE",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                     SizedBox(height: 5),
                     Text(
                      "traders hub",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                     SizedBox(height: 5),
                     Text(
                      "Last update: 26 December 2023",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white54,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(top: 7, bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here...",
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      prefixIcon: Icon(Icons.search, size: 28),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.43,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 80, 20, 194),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.43,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: Column(
                    children: [
                      GridView.builder(
                        itemCount: cateNames.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.1,
                        ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => widgets[cateNames[index]]!),
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: cateColors[index],
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: cateIcons[index],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  modifiedCateNames[index],
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
