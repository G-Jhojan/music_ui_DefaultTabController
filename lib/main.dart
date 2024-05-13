import 'package:flutter/material.dart';
import 'package:flutter_music/data/liked_songs.dart';
import 'package:flutter_music/data/song_list.dart';
import 'package:flutter_music/presentation/home/home_screen.dart';
//import 'package:flutter_music/presentation/playlist/playlist_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.red 
      ),
      home:  const HomeScreen()
      //const PlaylistScreen()
    );
  }
}


//DefaultTabController(
//        length: 2,
//        child: Scaffold(
//          appBar: AppBar(
//            centerTitle: true,
//            title: const Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Text('W-CORP'),
//                SizedBox(width: 50.0),
//                Text('PlayList'),
//              ],
//            ),
//            bottom: const TabBar(
//              tabs:[
//                Tab(icon: Icon(Icons.music_note_rounded), text: 'Songs',),
//                Tab(icon: Icon(Icons.music_note_rounded), text: 'Liked',),
//              ] 
//            ),
//          ),//

//          body: TabBarView(
//            children:[
//              const SongList(),
//              LikedSong()
//            ]
//          )
//        ),
//      ) 