import 'package:flametest/screens/game_screen.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => _launchGame(context),
          child: const Text('Launch game'),
        ),
      ),
    );
  }

  void _launchGame(BuildContext context) => Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => GameScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              child,
        ),
      );
}
