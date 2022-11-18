import 'package:flame/game.dart';
import 'package:flame/palette.dart';

class MyGame extends FlameGame with SingleGameInstance {
  @override
  Future onLoad() async {}

  @override
  Color backgroundColor() => const Color(0xff000000);

  void pause() => pauseEngine();

  void resume() => resumeEngine();
}
