import 'package:flutter/material.dart';
import 'Frase.dart';
import 'FraseCard.dart';

void main() {
  runApp(MaterialApp(
    home: Lista(),
  ));

}
class Lista extends StatefulWidget {
  const Lista({super.key});

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  List<Frase> frases = [
  Frase(autor:'oscar',text:'recebaa'),
    Frase(autor:'Assis',text:'nuncaa'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Frases Epicas"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: frases.map((frase) =>FraseCard(
            frase: frase,
            delete: (){
              setState(() {
                frases.remove(frase);
              });
            }
        )).toList(),
      )
    );
  }
}
