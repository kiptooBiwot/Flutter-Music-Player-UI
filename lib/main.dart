import 'package:flutter/material.dart';
import 'package:music_player_ui/neumorphic_box.dart';

void main() => runApp(const MusicPlayer());

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Center(
              child: Column(
                children: [
                  // back button and menu button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: NeuBox(
                          child: Icon(
                            Icons.arrow_back_ios_new,
                          ),
                        ),
                      ),
                      Text('P L A Y L I S T'),
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: NeuBox(
                          child: Icon(
                            Icons.menu,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 25.0,
                  ),

                  // Cover art, artist name, and song name

                  NeuBox(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset('images/album_cover.jpg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Usher Raymonds',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  const Text(
                                    'You Got it Bad',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23,
                                    ),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.favorite,
                                size: 30.0,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  // start time, shuffle button, repeat button, end time

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('0:00'),
                      Icon(Icons.shuffle),
                      Icon(Icons.repeat),
                      Text('4:22'),
                    ],
                  ),

                  // linear bar

                  // previous song, pause/play button, skip next song button
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
