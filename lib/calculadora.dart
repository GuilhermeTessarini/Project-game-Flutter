import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  late String operation;
  late int number1;
  late int number2;
  late int result;
  late List<int> options;
  late bool isCorrect;

  void generateRandomOperation() {
    setState(() {
      final random = Random();
      number1 = random.nextInt(10) + 1; // Número aleatório entre 1 e 10
      number2 = random.nextInt(10) + 1; // Número aleatório entre 1 e 10
      final operationIndex = random.nextInt(4); // Número aleatório entre 0 e 3
      switch (operationIndex) {
        case 0:
          operation = '+';
          result = number1 + number2;
          break;
        case 1:
          operation = '-';
          result = number1 - number2;
          break;
        case 2:
          operation = 'x';
          result = number1 * number2;
          break;
        case 3:
          operation = '/';
          result = number1 ~/ number2;
          break;
      }

      // Gerar 6 opções de resultados
      options = List<int>.generate(6, (_) {
        return random.nextInt(20) + 1; // Número aleatório entre 1 e 20
      });
      options[random.nextInt(4)] =
          result; // Substituir uma das opções pelo resultado correto

      isCorrect = false;
    });
  }

  void checkAnswer(int answer) {
    setState(() {
      isCorrect = answer == result;
    });
  }

  @override
  void initState() {
    super.initState();
    generateRandomOperation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$number1 $operation $number2',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Selecione o resultado correto:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: options.map((option) {
                return ElevatedButton(
                  child: 
                  Text('$option'),
                  onPressed: () {
                    checkAnswer(option);
                  },
                );
                
              }).toList(),
            ),
            SizedBox(height: 20),
            if (isCorrect)
              Text(
                'Resposta correta!',
                style: TextStyle(fontSize: 18, color: Colors.green),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: generateRandomOperation,
      ),
    );
  }
}
