import 'package:bbmgram/components/appbar.dart';
import 'package:bbmgram/components/bottom_nav.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        appBar: const PrimaryAppBar(),
        body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 32, 32, 32),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                CustomCard(label: "Akun", icon: Icons.person),
                CustomCard(
                    label: "Saved", icon: Icons.bookmark_border_outlined),
                CustomCard(label: "Favorites", icon: Icons.star_outline),
                CustomCard(
                    label: "Notification", icon: Icons.notifications_none),
                CustomCard(label: "About", icon: Icons.info_outline),
                TextButton(
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Add account",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Log out",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Delete account",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({
    super.key,
    required this.label,
    required this.icon,
  });

  String label;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 49, 48, 48),
        ),
        height: 50,
        child: Card(
          color: const Color.fromARGB(255, 49, 48, 48),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      icon,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      label,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
