import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:flametest/utils/assets.dart';

class MyGame extends FlameGame with SingleGameInstance {
  @override
  Future onLoad() async {
    /*for (int i = 0; i < 10; i++) {
      for (int j = 0; j < 10; j++) {
        await add(TerrainComponent(i: i, j: j));
      }
    }*/

    final TiledComponent map =
        await TiledComponent.load(Assets.TILES_MAP, Vector2.all(100 / 7));
    add(map);

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
