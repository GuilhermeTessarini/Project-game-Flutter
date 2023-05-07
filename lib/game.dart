import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desenvolvimento do Jogo'),
      ),
      body: const Center(
        child: Text('Tela para o desenvolvimento do jogo!'),
      ),
    );
  }
}