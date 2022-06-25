import 'package:flutter/material.dart';
import 'package:music_player_ui/neumorphic_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
                  const SizedBox(
                    height: 10.0,
                  ),
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
                    height: 30,
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

                  const SizedBox(height: 30.0),

                  // linear bar
                  NeuBox(
                    child: LinearPercentIndicator(
                      lineHeight: 10,
                      percent: 0.8,
                      progressColor: Colors.green,
                      backgroundColor: Colors.transparent,
                    ),
                  ),

                  const SizedBox(height: 30.0),

                  // previous song, pause/play button, skip next song button

                  SizedBox(
                    height: 80.0,
                    child: Row(
                      children: const [
                        Expanded(
                          child: NeuBox(
                            child: Icon(
                              Icons.skip_previous,
                              size: 32.0,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: NeuBox(
                              child: Icon(
                                Icons.play_arrow,
                                size: 32.0,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: NeuBox(
                            child: Icon(
                              Icons.skip_next,
                              size: 32.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
