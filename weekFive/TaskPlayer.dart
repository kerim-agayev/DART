import 'models/Playlist.dart';

void main(List<String> args) {
  PlayList playlist = PlayList(
      title: "Media faylının başlığı",
      duration: 5.5,
      filePath: "filePath",
      name: "name");
  playlist.playPlaylist();
  playlist.shufflePlaylist(playlist.mediaFiles);
    playlist.playPlaylist();
}
