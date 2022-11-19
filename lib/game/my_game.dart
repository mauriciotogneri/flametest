import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flametest/game/components/tank_component.dart';

class MyGame extends FlameGame with SingleGameInstance {
  @override
  Future onLoad() async {
    await add(TankComponent());

    /*add(FpsTextComponent(
      position: Vector2(
        50,
        (100 * (camera.canvasSize.y / camera.canvasSize.x)) / 2,
      ),
      scale: Vector2(0.2, 0.2),
      anchor: Anchor.center,
    ));*/

    camera.viewport = FixedResolutionViewport(
      Vector2(
        100,
        (100 * (camera.canvasSize.y / camera.canvasSize.x)).round().toDouble(),
      ),
    );
  }

  @override
  Color backgroundColor() => const Color(0xff000000);

  void pause() => pauseEngine();

  void resume() => resumeEngine();
}
