import 'package:flutter/material.dart';
import 'package:music_player/constants/misc.dart';

class ArtistCard extends StatelessWidget {
  final String name;
  final String avatar;
  const ArtistCard({Key? key, required this.name, required this.avatar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                avatar,
              ),
            ),
          ),
        ),
        kSizedBox_5,
        Text(
          name,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 15,
              ),
        )
      ],
    );
  }
}
