enum Activity {
  hiking,
  walking,
  running,
  trailRunning,
  roadBiking,
  mountainBiking,
  seaKayaking,
}

extension ActivityExtensions on Activity {
  String toDisplayString() {
    return name.replaceAllMapped(RegExp(r'[A-Z]'), (match) {
      return ' ${match.group(0)}';
    }).trim();
  }
}
