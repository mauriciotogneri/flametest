import 'package:flame/game.dart';
import 'package:flametest/game/my_game.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  final MyGame myGame = MyGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: myGame);
  }
}
