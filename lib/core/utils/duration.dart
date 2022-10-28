extension DurationX on Duration {
  /// Return duration like MM:SS
  String get getStringDuration {
    final minutes = inMinutes;
    final seconds = inSeconds % 60;

    final minutesString = '$minutes'.padLeft(2, '0');
    final secondsString = '$seconds'.padLeft(2, '0');
    return '$minutesString:$secondsString';
  }
}
