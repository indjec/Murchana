import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({Key? key}) : super(key: key);

  @override
  _MusicPlayerScreenState createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        child: const Text("open music player"),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            enableDrag: true,
            isScrollControlled: true,
            backgroundColor: const Color(0xff121728),
            builder: (BuildContext context) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 2,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Closer',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/thumbnail1.jpg',
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'The ChainSmokers',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Slider(
                        value: 1,
                        onChanged: (val) {
                          print(val);
                        }),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
