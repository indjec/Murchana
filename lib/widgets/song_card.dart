import 'package:flutter/material.dart';
import 'package:music_player/constants/misc.dart';

class SongCard extends StatelessWidget {
  final String name;
  final String avatar;
  const SongCard({Key? key, required this.name, required this.avatar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: NetworkImage(
                  avatar,
                ),
              ),
            ),
          ),
          kSizedBox_5,
          const Text(
            "Unmona",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          const Text(
            "Zubeen Garg",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              color: Colors.white60,
            ),
          )
        ],
      ),
    );
  }
}
