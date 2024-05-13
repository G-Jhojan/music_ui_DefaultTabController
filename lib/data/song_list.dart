import 'package:flutter/material.dart';
import 'package:flutter_music/data/music_models.dart';
import 'package:flutter_music/presentation/music_player/music_player_screen.dart';
import 'package:flutter_music/provider/data_provider.dart';

class SongList extends StatelessWidget {
  const SongList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Music> musicList = DataProvider.getMusicList();
    return Scaffold(
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
        },
      ),
    );
  }
}
