import 'package:bbmgram/pages/home.dart';
import 'package:bbmgram/pages/user/profile.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 47, 46, 46),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomButtonIcon(icon: Icons.home, screen: const Home()),
          CustomButtonIcon(
            icon: Icons.search,
            screen: const Profile(),
          ),
          CustomButtonIcon(
            icon: Icons.file_upload_outlined,
            screen: const Profile(),
          ),
          CustomButtonIcon(
            icon: Icons.video_collection,
            screen: const Profile(),
          ),
          CustomButtonIcon(
            icon: Icons.person,
            screen: const Profile(),
          ),
        ],
      ),
    );
  }
}

class CustomButtonIcon extends StatelessWidget {
  CustomButtonIcon({
    super.key,
    required this.icon,
    this.screen,
  });

  IconData icon;
  Widget? screen;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return screen!;
        }));
      },
      icon: Icon(
        icon,
        color: Colors.white,
        size: 25,
      ),
      label: const Text(""),
    );
  }
}
