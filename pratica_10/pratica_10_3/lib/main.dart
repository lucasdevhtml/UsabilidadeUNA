import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController num01Controller = TextEditingController();

  TextEditingController num02Controller = TextEditingController();

  TextEditingController num03Controller = TextEditingController();

  String resp = "";

  multiplicar() {
    double num01 = double.tryParse(this.num01Controller.text);
    double num02 = double.tryParse(this.num02Controller.text);
    double num03 = double.tryParse(this.num03Controller.text);
    double soma = num01 * num02 * num03;
    this.resp = 'Volume = $soma';
    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o comprimento:',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe a largura:',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num03Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe a altura:',
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              print(multiplicar());
              setState(multiplicar);
            },
            child: Text(
              'Calcular Volume ',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Text(
            this.resp,
            style: TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
