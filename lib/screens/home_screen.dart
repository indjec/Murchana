import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/constants/misc.dart';
import 'package:music_player/model/artist_model.dart';
import 'package:music_player/widgets/artist_card.dart';
import 'package:music_player/widgets/music_player_botto_bar.dart';
import 'package:music_player/widgets/song_card.dart';
import 'package:music_player/widgets/vertical_song_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ink(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.white24,
                kBackgroundColor,
                kBackgroundColor,
                kBackgroundColor,
                //add more colors for gradient
              ],
              begin: Alignment.topCenter, //begin of the gradient color
              end: Alignment.bottomCenter, //end of the gradient color
              stops: [0, 0.15, 0.5, 0.8] //stops for individual color
              //set the stops number equal to numbers of color
              ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const HomeScreenAppBar(),
              Expanded(
                child: ListView(
                  children: [
                    kSizedBox_20,
                    const TitleWidget(title: "Artists For You"),
                    kSizedBox_5,
                    SizedBox(
                      height: 130,
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        separatorBuilder: (_, __) {
                          return const SizedBox(
                            width: 15,
                          );
                        },
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: artistList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ArtistCard(
                            avatar: artistList[index].avatar!,
                            name: artistList[index].name!,
                          );
                        },
                      ),
                    ),
                    kSizedBox_20,
                    const TitleWidget(title: "Trending Songs"),
                    kSizedBox_5,
                    SizedBox(
                      height: 140,
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        separatorBuilder: (_, __) {
                          return const SizedBox(
                            width: 15,
                          );
                        },
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: artistList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SongCard(
                            avatar: artistList[index].avatar!,
                            name: artistList[index].name!,
                          );
                        },
                      ),
                    ),
                    kSizedBox_20,
                    const TitleWidget(title: "New Release"),
                    kSizedBox_5,
                    ListView.separated(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 15),
                      separatorBuilder: (_, __) {
                        return kSizedBox_10;
                      },
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: artistList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return VerticalSongCard(
                          avatar: artistList[index].avatar!,
                          name: artistList[index].name!,
                        );
                      },
                    ),
                  ],
                ),
              ),
              const MusicPlayerBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(title,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 20,
                  )),
        ),
        IconButton(
          onPressed: () {},
          splashRadius: 20,
          icon: const Icon(
            Icons.keyboard_arrow_right_rounded,
          ),
        )
      ],
    );
  }
}

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            "Murchana",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
          ),
          splashRadius: 20,
        )
      ],
    );
  }
}
