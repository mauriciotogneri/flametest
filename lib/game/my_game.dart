import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flametest/game/components/tank_component.dart';

class MyGame extends FlameGame with SingleGameInstance {
  @override
  Future onLoad() async {
    await add(TankComponent());

    camera.viewport = FixedResolutionViewport(
      Vector2(
        100,
        (100 * (camera.canvasSize.y / camera.canvasSize.y)).round().toDouble(),
      ),
    );
  }

  @override
  Color backgroundColor() => const Color(0xff000000);

  void pause() => pauseEngine();

  void resume() => resumeEngine();
}
