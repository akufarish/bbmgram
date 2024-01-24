import 'package:bbmgram/components/appbar.dart';
import 'package:bbmgram/components/bottom_nav.dart';
import 'package:bbmgram/components/posts.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        appBar: PrimaryAppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 32, 32, 32),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 0.5,
                              color: const Color.fromARGB(255, 79, 79, 79)))),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var i = 0; i < 10; i++)
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                onPressed: () {},
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/img/Profile.png"))),
                                ),
                              )),
                      ],
                    ),
                  ),
                ),
                for (var i = 1; i < 5; i++) Posts(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}
