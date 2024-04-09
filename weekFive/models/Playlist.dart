import 'MediaFile.dart';

class PlayList extends MediaFile {
  PlayList({
    required super.title,
    required super.duration,
    required super.filePath,
    required this.name,
  });
//   1- name:         Pleylistin adı
// 2- mediaFiles: Pleylistdəki musiqi fayllarının siyahısı
// classın aşağıdakı metodu var:
// playPlaylist(){}
  String name;
  var a = MediaFile(title: "hey you", duration: 5.5, filePath: "filePath1");
  var b = MediaFile(title: "ocean drive", duration: 5.5, filePath: "filePath1");
  var c =
      MediaFile(title: "out of touch", duration: 5.5, filePath: "filePath1");
  List<MediaFile> mediaFiles = [MediaFile(title: "hey you", duration: 5.5, filePath: "filePath1"), MediaFile(title: "ocean drive", duration: 5.5, filePath: "filePath1"),MediaFile(title: "out of touch", duration: 5.5, filePath: "filePath1")];


  playPlaylist() {
    super.play(mediaFiles);
  }

  @override
  void shufflePlaylist(mediaFiles) {
    mediaFiles.shuffle();
  }
}
