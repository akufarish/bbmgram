import 'package:bbmgram/pages/user/settings.dart';
import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 32, 32, 32),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "LTG",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.file_upload_outlined,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return Settings();
                    }));
                  },
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
