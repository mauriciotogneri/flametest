import 'package:flame/components.dart';
import 'package:flametest/utils/assets.dart';

class TerrainComponent extends SpriteComponent {
  static const double spriteSize = 100 / 7;

  TerrainComponent({
    required int i,
    required int j,
  }) {
    position = Vector2(
      (i * spriteSize) + (spriteSize / 2),
      (j * spriteSize) + (spriteSize / 2),
    );
  }

  @override
  Future onLoad() async {
    anchor = Anchor.center;

    size = Vector2.all(spriteSize);
    sprite = await Sprite.load(Assets.IMAGES_TERRAIN);
  }
}
