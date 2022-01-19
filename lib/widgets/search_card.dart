import 'package:flutter/material.dart';
import 'package:music_player/constants/misc.dart';
import 'package:music_player/model/search_model.dart';

class SearchCard extends StatelessWidget {
  final bool isOdd;
  final SearchModel searchModel;
  const SearchCard({Key? key, required this.isOdd, required this.searchModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: isOdd ? 60 : 180,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(searchModel.search1!,
                style: const TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
        kSizedBox_10,
        Container(
          height: isOdd ? 180 : 60,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              searchModel.search2!,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
