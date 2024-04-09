import 'Playable.dart';

class MediaFile implements Playable {
//   1- title:    Media faylının başlığı
// 2- duration: Media faylının saniyələrlə müddəti
// 3- filePath: Media faylının fayl yolu və ya URL-i
  String title;
  double duration;
  String filePath;
  MediaFile(
      {required this.title, required this.duration, required this.filePath});
  // 1- shufflePlaylist(parametr){}
  void shufflePlaylist(List<MediaFile> b) {
    b.shuffle();
  }

  @override
  void pause() {
    print(" musiqi dayandi");
  }

  @override
  void play(List<MediaFile> a) {
    for (var i = 0; i < a.length; i++) {
      print("${i+1}: ${a[i].title}");
    }
  }

  @override
  void stop() {
    print("musiqi dayandi");
  }
}
