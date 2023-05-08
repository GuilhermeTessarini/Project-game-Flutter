import 'package:flutter/material.dart';

class Creditos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Créditos', style: TextStyle(fontFamily: 'Creditos'),),
      ),
       body: SingleChildScrollView(
       
       child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const[
            SizedBox(height: 24),
            Text( 'Boatematica: ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Titulo'),
              ),
            Text( 'Aventura no Gelo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Titulo'),
              ),
            SizedBox(height: 24),
            Text( 'Desenvolvedores:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Creditos'),
              ),
            SizedBox(height: 8),
            Text( 'Amanda Sahori',
              style: TextStyle(fontSize: 20, fontFamily: 'Creditos'),
              ),
            SizedBox(height: 8),
            Text( 'Guilherme Tessarini',
              style: TextStyle(fontSize: 20, fontFamily: 'Creditos'),
              ),
            SizedBox(height: 8),
            Text( 'Isabella Alegrette',
              style: TextStyle(fontSize: 20, fontFamily: 'Creditos'),
              ),
            SizedBox(height: 8),
            Text( 'Lais Barros',
              style: TextStyle(fontSize: 20, fontFamily: 'Creditos'),
            ),
            SizedBox(height: 8),
            Text( 'Rodrigo Yamaguchi',
              style: TextStyle(fontSize: 20, fontFamily: 'Creditos'),
              ),
            
            SizedBox(height: 24),
            Text(
              'Cliente:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Creditos'),
            ),
            SizedBox(height: 8),
            Text(
              'Karoline Eduarda Soares',
              style: TextStyle(fontSize: 20, fontFamily: 'Creditos'),
            ),
            SizedBox(height: 8),
            Text( 'Veronica Schiavon Carrilho',
              style: TextStyle(fontSize: 20, fontFamily: 'Creditos'),
              ),
            SizedBox(height: 8),
            Text( 'Jessica Ariane Goskos Rezende',
              style: TextStyle(fontSize: 20, fontFamily: 'Creditos'),
              ),
            SizedBox(height: 24),
            Text( 'Designer:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Creditos'),
              ),
            SizedBox(height: 8),
            Text( 'Amanda Sahori',
              style: TextStyle(fontSize: 20, fontFamily: 'Creditos'),
              ),
            SizedBox(height: 8),
            Text( 'Lais Barros',
              style: TextStyle(fontSize: 20, fontFamily: 'Creditos'),
              ),
            SizedBox(height: 8),
            Text( 'Isabella Alegrette',
              style: TextStyle(fontSize: 20, fontFamily: 'Creditos'),
              ),
           /* SizedBox(height: 24),
            Text(
              'Versão do Jogo:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Creditos'),
            ),
            SizedBox(height: 8),
            Text(
              '1.0',
              style: TextStyle(fontSize: 20, fontFamily: 'Creditos'),
            ),
            */
            /*SizedBox(height: 24),
            Text(
              'Aventura no gelo - Boatematica',
              style: TextStyle(fontSize: 16, fontFamily: 'Creditos'),
            ),
            */
            SizedBox(height: 12),
            Text(
              'IFSP e UNIFAE © 2023',
              style: TextStyle(fontSize: 12, fontFamily: 'Creditos'),
            ),
            Text(
              'Todos os direitos reservados.',
              style: TextStyle(fontSize: 12, fontFamily: 'Creditos'),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
