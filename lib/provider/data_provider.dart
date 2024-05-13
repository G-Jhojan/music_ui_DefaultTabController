import 'package:flutter_music/data/music_models.dart';

class DataProvider {
  

  static List<Music> getMusicList() {
    const url =
      'https://scontent.fgye11-1.fna.fbcdn.net/v/t1.18169-9/20526165_1261703280605452_9166464602372765499_n.jpg?stp=c80.0.206.206a_dst-jpg_p206x206&_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_ohc=8wYDe8uU1CkQ7kNvgG40xrq&_nc_ht=scontent.fgye11-1.fna&oh=00_AYB-JA8RBNSzXs6NqKCfAejf0gZ8mn6AwoZ2I4lMec6m2Q&oe=6668762D';

    return [
      Music(
          title: 'Jodiendo', 
          artist: 'Johaan', 
          album: 'Vísperas', 
          coverUrl: url
          ),
      Music(
          title: 'Jodiendo', 
          artist: 'Johaan', 
          album: 'Vísperas', 
          coverUrl: url
          ),
      Music(
          title: 'Jodiendo', 
          artist: 'Johaan', 
          album: 'Vísperas', 
          coverUrl: url
          ),
      Music(
          title: 'Jodiendo', 
          artist: 'Johaan', 
          album: 'Vísperas', 
          coverUrl: url
          ),
    ];
  }
}
