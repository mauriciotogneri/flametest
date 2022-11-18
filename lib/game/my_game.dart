import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flametest/game/components/tank_component.dart';

class MyGame extends FlameGame with SingleGameInstance {
  @override
  Future onLoad() async {
    await add(TankComponent());
  }

  @override
  Color backgroundColor() => const Color(0xff000000);

  void pause() => pauseEngine();

  void resume() => resumeEngine();
}
