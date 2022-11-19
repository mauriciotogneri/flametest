import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flametest/game/components/terrain_component.dart';

class MyGame extends FlameGame with SingleGameInstance {
  @override
  Future onLoad() async {
    for (int i = 0; i < 10; i++) {
      for (int j = 0; j < 10; j++) {
        await add(TerrainComponent(i: i, j: j));
      }
    }

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
        100 * (camera.canvasSize.y / camera.canvasSize.x),
      ),
    );
  }

  @override
  Color backgroundColor() => const Color(0xff000000);

  void pause() => pauseEngine();

  void resume() => resumeEngine();
}
