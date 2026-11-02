void main() {
  List<String> playlist = ['Song A', 'Song B', 'Song C'];

  playlist.add('Song D');
  playlist.add('Song E');
  playlist.remove('Song B');
  playlist.removeAt(0);
  playlist[0] = 'Intro';

  print('first: ${playlist.first}');
  print('last: ${playlist.last}');
  print('length: ${playlist.length}');

  for (var song in playlist) {
    print(song);
  }

  for (var i = 0; i < playlist.length; i++) {
    print('${i + 1}. ${playlist[i]}');
  }

  playlist.clear();
  print('isEmpty: ${playlist.isEmpty}');
}
