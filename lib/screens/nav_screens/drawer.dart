import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 250.0,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              DrawerHeader(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 40.0,
                        backgroundImage: AssetImage("assets/res/drawer.png"),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Text(
                        "Alex Nikiforov",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Text(
                        "Fashion Designer",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(
                        width: 3.0,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.favorite_rounded,
                        color: Color.fromRGBO(246, 121, 82, 1),
                      ),
                      title: const Text(
                        "My Favorites",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.account_balance_wallet,
                        color: Color.fromRGBO(246, 121, 82, 1),
                      ),
                      title: const Text(
                        "Wallets",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.shopping_bag,
                        color: Color.fromRGBO(246, 121, 82, 1),
                      ),
                      title: const Text(
                        "My Orders",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.book,
                        color: Color.fromRGBO(246, 121, 82, 1),
                      ),
                      title: const Text(
                        "About Us",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.lock,
                        color: Color.fromRGBO(246, 121, 82, 1),
                      ),
                      title: const Text(
                        "Privacy Policy",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.settings,
                        color: Color.fromRGBO(246, 121, 82, 1),
                      ),
                      title: const Text(
                        "Settings",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.logout_outlined,
                        color: Color.fromRGBO(246, 121, 82, 1),
                      ),
                      title: const Text(
                        "Logout",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SvgPicture.asset(
                        'assets/res/Vector.svg',
                        height: 60.0,
                        width: 52.0,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
