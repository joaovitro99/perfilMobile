import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Layout(),
  ));

}
class Layout extends StatefulWidget{
  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int nivel = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title:Text('Meu perfil'),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
      ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                nivel +=1;
              });
            },
            child: Icon(Icons.add),
      backgroundColor: Colors.grey[800],

        ),
        body:Padding(
            padding: EdgeInsets.fromLTRB(30,40,30,0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/foto.png'),
                  radius:40.0,
                ),
              ),
              Divider(
                height:60.0,
                color: Colors.grey[800],
              ),
              Text(
                  'Nome',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,

              )),
              SizedBox(height:10.0),
              Text(
                  'Joao',
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height:30.0),
              Text(
                  'Nível do jogador',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,

                  )),
              SizedBox(height:10.0),
              Text(
                  '$nivel',
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height:30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width:10.0),
                  Text(
                    'joaoreisreis@gmail.com',
                     style:TextStyle( color: Colors.grey[400],
                      letterSpacing: 1.0,
                      fontSize: 18.0
                     ))

                ]
              )
            ]
          )
    )
    );
  }
}



