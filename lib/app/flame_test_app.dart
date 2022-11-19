import 'package:flametest/screens/game_screen.dart';
import 'package:flutter/material.dart';

class FlameTestApp extends StatelessWidget {
  const FlameTestApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flame Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GameScreen(),
    );
  }
}
