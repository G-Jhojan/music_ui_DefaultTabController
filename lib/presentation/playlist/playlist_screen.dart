import 'package:flutter/material.dart';
import 'package:flutter_music/data/music_models.dart';
import 'package:flutter_music/presentation/music_player/music_player_screen.dart';
import 'package:flutter_music/provider/data_provider.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //const music = Music;
    List<Music> musicList = DataProvider.getMusicList();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('WAR CORP - APP MUSIC'),
      ),
      body: ListView.builder(
          itemCount: musicList.length,
          itemBuilder: (context, index) {
            Music music = musicList[index];
            return ListTile(
              title: Text(music.title),
              subtitle: Text('${music.artist} - ${music.album}'),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(music.coverUrl),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MusicPlayerScreen(music: music)));
              },
            );
          }),
    );
  }
}
