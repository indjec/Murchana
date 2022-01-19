import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';

class MusicPlayerBottomBar extends StatelessWidget {
  const MusicPlayerBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 60,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kPrimaryDarkColor,
        border: Border(
          bottom: BorderSide(color: Colors.black),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: Image.network(
              "https://quaque.s3.ap-south-1.amazonaws.com/mcn/artists/avatars/BV178VO51eKjeAQThw5XolJYXwx20tVxxC2fahBF.jpg",
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Mayabinir Ratir bukut",
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                "Zubeen Garg",
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.play_arrow),
            splashRadius: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline),
            splashRadius: 20,
          )
        ],
      ),
    );
  }
}
