import 'package:flutter/material.dart';
import 'package:flutter_music/data/liked_songs.dart';
import 'package:flutter_music/data/song_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> tabs = [const SongList(), LikedSong()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('W-CORP - PLAYLIST '),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items:const [
             BottomNavigationBarItem(
              icon: Icon(Icons.music_note_outlined),
              label: 'Songs' 
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outlined),
              label: 'Liked' 
            ),
            ]
          ),
    );
  }
}
