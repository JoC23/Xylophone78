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

Future<void> trackDelay(int millisecs) async {
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

void happyBirthday() async {
  // 112143 112154 1176432 665354
  cache = null;
  await stopTrack();
  cache = new AudioCache();
  playSound(1);
  await trackDelay(500);
  playSound(1);
  await trackDelay(500);
  playSound(2);
  await trackDelay(1000);
  playSound(1);
  await trackDelay(1000);
  playSound(4);
  await trackDelay(1000);
  playSound(3);
  await trackDelay(1800);

  playSound(1);
  await trackDelay(500);
  playSound(1);
  await trackDelay(500);
  playSound(2);
  await trackDelay(1000);
  playSound(1);
  await trackDelay(1000);
  playSound(5);
  await trackDelay(1000);
  playSound(4);
  await trackDelay(1800);

  playSound(1);
  await trackDelay(500);
  playSound(1);
  await trackDelay(500);
  playSound(7);
  await trackDelay(1000);
  playSound(6);
  await trackDelay(1000);
  playSound(4);
  await trackDelay(1000);
  playSound(3);
  await trackDelay(1000);
  playSound(2);
  await trackDelay(1800);

  playSound(6);
  await trackDelay(500);
  playSound(6);
  await trackDelay(500);
  playSound(5);
  await trackDelay(1000);
  playSound(3);
  await trackDelay(1000);
  playSound(5);
  await trackDelay(1000);
  playSound(4);
  await trackDelay(2000);
}

void yeahRight() async {
  // 3553 65333 5351
  cache = null;
  await stopTrack();

  cache = new AudioCache();
  playSound(3);
  await trackDelay(1000);
  playSound(5);
  await trackDelay(400);
  playSound(5);
  await trackDelay(500);
  playSound(3);
  await trackDelay(1600);

  playSound(6);
  await trackDelay(500);
  playSound(5);
  await trackDelay(500);
  playSound(3);
  await trackDelay(500);
  playSound(3);
  await trackDelay(350);
  playSound(3);
  await trackDelay(1000);

  playSound(5);
  await trackDelay(350);
  playSound(3);
  await trackDelay(500);
  playSound(5);
  await trackDelay(500);
  playSound(1);
  await trackDelay(1000);
}

void twinkleTwinkle() async {
  // 1155665 4433221 554 332 5544332
  cache = null;
  await stopTrack();

  cache = new AudioCache();
  playSound(1);
  await trackDelay(500);
  playSound(1);
  await trackDelay(500);
  playSound(5);
  await trackDelay(500);
  playSound(5);
  await trackDelay(500);
  playSound(6);
  await trackDelay(500);
  playSound(6);
  await trackDelay(500);
  playSound(5);
  await trackDelay(1000);

  playSound(4);
  await trackDelay(500);
  playSound(4);
  await trackDelay(500);
  playSound(3);
  await trackDelay(500);
  playSound(3);
  await trackDelay(500);
  playSound(2);
  await trackDelay(500);
  playSound(2);
  await trackDelay(500);
  playSound(1);
  await trackDelay(1000);

  playSound(5);
  await trackDelay(500);
  playSound(5);
  await trackDelay(500);
  playSound(4);
  await trackDelay(1000);

  playSound(3);
  await trackDelay(500);
  playSound(3);
  await trackDelay(500);
  playSound(2);
  await trackDelay(1000);

  playSound(5);
  await trackDelay(500);
  playSound(5);
  await trackDelay(500);
  playSound(4);
  await trackDelay(500);
  playSound(4);
  await trackDelay(500);
  playSound(3);
  await trackDelay(500);
  playSound(3);
  await trackDelay(500);
  playSound(2);
  await trackDelay(1000);
}
