import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/img/Profile.png"))),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "LTG",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                color: Colors.white,
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/img/lys.png"))),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.heart_broken_outlined),
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chat_bubble_outline),
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.airplanemode_active_outlined),
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.save_outlined),
                color: Colors.white,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "70 likes",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
          child: Row(
            children: [
              Text(
                "LTG Love Yourself",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    ));
  }
}
