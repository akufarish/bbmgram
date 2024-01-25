import 'package:bbmgram/components/profile_appbar.dart';
import 'package:flutter/material.dart';

class DetailMessage extends StatelessWidget {
  const DetailMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        appBar: const ProfileAppBar(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 32, 32, 32),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
