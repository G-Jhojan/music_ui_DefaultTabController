import 'package:flutter/material.dart';
import 'package:flutter_music/data/music_models.dart';

class MusicPlayerScreen extends StatelessWidget {
  
  final  Music music ;

  const MusicPlayerScreen({super.key, required this.music});

  @override
  Widget build(BuildContext context) {
      
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Now Playing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(music.coverUrl, height: 200,),
            const SizedBox(height: 16,),
            Text(
              music.title,
              style: const TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold
              ),
            ),
             Text('${music.artist} - ${music.album}')
            ],

        ),
      ),
    );
  }
}
