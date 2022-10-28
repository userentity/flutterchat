import 'package:audio_waveforms/audio_waveforms.dart';

class CustomPlayerController extends PlayerController {
  static final List<PlayerController> _activePlayersList = [];

  static void addNewPlayer(PlayerController controller) {
    _activePlayersList.add(controller);
  }

  static void removePlayer(PlayerController controller) {
    _activePlayersList.remove(controller);
  }

  static Future<void> pauseAllPlayers() async {
    for (final player in _activePlayersList) {
      player.pausePlayer();
    }
  }
}
