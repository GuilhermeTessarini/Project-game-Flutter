import 'package:flutter/material.dart';
import 'package:flutter_project_boatematica/game.dart';
import 'package:flutter_project_boatematica/game_adicao.dart';
import 'package:flutter_project_boatematica/game_divisao.dart';
import 'package:flutter_project_boatematica/game_multiplicacao.dart';
import 'package:flutter_project_boatematica/game_subtracao.dart';
import 'home.dart';
import 'game.dart';

void main() => runApp(GameMenuScreen());

class GameMenuScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar( backgroundColor: Colors.blue, title: Text('Boatematica'),),
      body: Stack(
      //Esse Stack() é onde estamos colocando o .gif de fundo
        children: <Widget>[
          SizedBox.expand(
            child: Image.asset(
              'assets/background.gif', 
              fit: BoxFit.cover,
            ),
          ),
          Center(
            //Esse Center() é onde estamos colocando os botões de play e créditos
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GameAdicao()),
                    );
                  },
                  child: Container(
                    child: Image.asset(
                      'assets/soma.png',
                      width: 250,
                      height: 150,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GameSubtracao()),
                    );
                  },
                  child: Container(
                    child: Image.asset(
                      'assets/subtracao.png',
                      width: 250,
                      height: 150,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GameMultiplcacao()),
                    );
                  },
                  child: Container(
                    child: Image.asset(
                      'assets/multiplicacao.png',
                      width: 250,
                      height: 150,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GameDivisao()),
                    );
                  },
                  child: Container(
                    child: Image.asset(
                      'assets/divisao.png',
                      width: 250,
                      height: 150,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
