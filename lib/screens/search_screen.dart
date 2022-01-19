import 'package:flutter/material.dart';
import 'package:music_player/constants/misc.dart';
import 'package:music_player/model/search_model.dart';
import 'package:music_player/screens/home_screen.dart';
import 'package:music_player/widgets/search_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
              child: SearchField(searchController: _searchController),
            ),
            kSizedBox_20,
            const TitleWidget(
              title: "Categories",
            ),
            SizedBox(
              height: 300,
              child: ListView.separated(
                separatorBuilder: (_, __) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                itemCount: seachList.length,
                itemBuilder: (BuildContext context, int index) {
                  return SearchCard(
                    searchModel: seachList[index],
                    isOdd: index % 2 == 1,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    required TextEditingController searchController,
  })  : _searchController = searchController,
        super(key: key);

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: TextFormField(
        controller: _searchController,
        style: const TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          prefixIcon: IconButton(
            iconSize: 20,
            color: Colors.black,
            splashRadius: 20,
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          suffixIcon: IconButton(
            iconSize: 20,
            color: Colors.black,
            splashRadius: 20,
            icon: const Icon(
              Icons.close,
            ),
            onPressed: () {
              _searchController.clear();
            },
          ),
          hintText: "Search",
          hintStyle: const TextStyle(
            color: Colors.black,
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
