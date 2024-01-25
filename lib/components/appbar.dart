import 'package:bbmgram/pages/messages/messages.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  const PrimaryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 32, 32, 32),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "BBMGRAM",
            style: GoogleFonts.grapeNuts(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.heart_broken,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const Message();
                    }));
                  },
                  icon: const Icon(
                    Icons.message_rounded,
                    color: Colors.white,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
