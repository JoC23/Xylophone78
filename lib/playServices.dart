import 'package:time/time.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

AudioCache cache;
AudioPlayer player;

Future<void> playSound(int soundNumber) async {
  if (cache != null) {
    player = await cache.play('notes7/note$soundNumber.wav');
  }
}

Future<void> trackDelay(double millisecs) async {
  if (cache != null) {
    await millisecs.milliseconds.delay;
  }
}

Future<void> stopTrack() async {
  cache = null;
  // minimum 820ms delay is required for single track play
  // Need more research
  await 820.milliseconds.delay;
}

void playTrack(List trackList) async {
  cache = new AudioCache();
  for (var i in trackList) {
    switch (i.runtimeType) {
      case int:
        playSound(i);
        break;
      case double:
        await trackDelay(i);
        break;
      default:
    }
  }
}
