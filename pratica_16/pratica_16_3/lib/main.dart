import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(home: Home(), routes: {
        '/desc': (context) => Descricao(),
      }),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                  "https://catracalivre.com.br/wp-content/uploads/2019/08/istock-931933966-910x607.jpg"),
            ),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Descricao())),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://catracalivre.com.br/wp-content/uploads/2019/08/istock-931933966-910x607.jpg"),
          ),
        ],
      ),
    );
  }
}

class Descricao extends StatefulWidget {
  DescricaoState createState() {
    return DescricaoState();
  }
}

class DescricaoState extends State<Descricao> {
  String titulo = '';
  String descr = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$titulo'),
        backgroundColor: Colors.green,
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(100),
          child: Text(
            '$titulo',
            style: TextStyle(
              fontSize: 38,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(30),
          child: Text(
            '$descr',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ]),
    );
  }
}
