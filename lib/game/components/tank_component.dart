import 'package:flame/components.dart';
import 'package:flametest/utils/assets.dart';

class TankComponent extends SpriteComponent {
  @override
  Future onLoad() async {
    position = Vector2(100, 100);
    anchor = Anchor.center;

    size = Vector2.all(64);
    sprite = await Sprite.load(Assets.IMAGES_TANK);
  }
}
