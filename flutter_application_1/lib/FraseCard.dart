import 'package:flutter/material.dart';
import 'Frase.dart';
class FraseCard extends StatelessWidget {
  final Frase frase;
  final Function delete;
  FraseCard({ required this.frase, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              frase.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              frase.autor,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 6.0),
            TextButton.icon(
              onPressed: () {
                // Your delete logic here
                delete();
              },
              label: Text('deletar frase'),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
