import 'package:flame/components.dart';
import 'package:flame/events.dart';

class TankComponent extends SpriteComponent with Tappable {
  @override
  Future onLoad() async {
    position = Vector2(10, 10);
    anchor = Anchor.center;

    size = Vector2.all(128);
    sprite = await Sprite.load('tank.png');
  }

  @override
  bool onTapDown(TapDownInfo info) {
    return true;
  }
}
