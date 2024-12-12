// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.green.shade600,
          appBar: AppBar(
            toolbarHeight: 80,
            backgroundColor: Colors.green.shade800,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Xylophone",
                  style: GoogleFonts.comicNeue(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 10, width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/1390/1390237.png",
                      height: 60,
                      width: 50),
                ),
              ],
            ),
          ),
          body: Center(
            child: Container(
              width: 400,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      audioPlayer.play(AssetSource('note1.wav'));
                    },
                    child: Container(
                      height: 200,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      audioPlayer.play(AssetSource('note2.wav'));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.orange,
                      ),
                      height: 200,
                      width: 30,
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      audioPlayer.play(AssetSource('note3.wav'));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.yellow,
                      ),
                      height: 200,
                      width: 30,
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      audioPlayer.play(AssetSource('note4.wav'));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green,
                      ),
                      height: 200,
                      width: 30,
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      audioPlayer.play(AssetSource('note5.wav'));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.indigo,
                      ),
                      height: 200,
                      width: 30,
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      audioPlayer.play(AssetSource('note6.wav'));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.purple,
                      ),
                      height: 200,
                      width: 30,
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      audioPlayer.play(AssetSource('note7.wav'));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                      ),
                      height: 200,
                      width: 30,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
