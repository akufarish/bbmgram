import 'package:bbmgram/components/bottom_nav.dart';
import 'package:bbmgram/components/pofile_appbar.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        appBar: const ProfileAppBar(),
        body: Container(
          height: double.infinity,
          decoration:
              BoxDecoration(color: const Color.fromARGB(255, 32, 32, 32)),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/img/Profile.png"),
                      width: 80,
                    ),
                    Room(numbers: 0, strings: "Posts"),
                    Room(numbers: 20, strings: "Followers"),
                    Room(numbers: 30, strings: "Following"),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomButton(text: "Edit Profile"),
                    CustomButton(text: "Show Profile"),
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 90,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "No Posts Yet",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}

// ignore: must_be_immutable
class Room extends StatelessWidget {
  Room({super.key, required this.numbers, required this.strings});

  String strings;
  int numbers;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        children: [
          Text(
            numbers.toString(),
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          Text(
            strings,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 49, 48, 48),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
