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
  String resp = "";

  somar() {
    int num01 = int.tryParse(this.num01Controller.text);
    int num02 = int.tryParse(this.num02Controller.text);
    int soma = num01 + num02;
    this.resp = '$num01 + $num02 = $soma';
    return this.resp;
  }

  multiplicar() {
    int num01 = int.tryParse(this.num01Controller.text);
    int num02 = int.tryParse(this.num02Controller.text);
    int soma = num01 * num02;
    this.resp = '$num01 * $num02 = $soma';
    return this.resp;
  }

  dividir() {
    double num01 = double.tryParse(this.num01Controller.text);

    double num02 = double.tryParse(this.num02Controller.text);
    double soma = num01 / num02;
    this.resp = '$num01 / $num02 = $soma';
    return this.resp;
  }

  subtrair() {
    int num01 = int.tryParse(this.num01Controller.text);
    int num02 = int.tryParse(this.num02Controller.text);
    int soma = num01 - num02;
    this.resp = '$num01 - $num02 = $soma';
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
                labelText: 'informe o primeiro número',
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
                labelText: 'informe o segundo número',
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              print(somar());
              setState(somar);
            },
            child: Icon(
              Icons.add,
              size: 60,
            ),
          ),
          RaisedButton(
            onPressed: () {
              print(multiplicar());
              setState(multiplicar);
            },
            child: Icon(
              Icons.clear,
              size: 60,
            ),
          ),
          RaisedButton(
            onPressed: () {
              print(subtrair());
              setState(subtrair);
            },
            child: Icon(
              Icons.remove,
              size: 60,
            ),
          ),
          RaisedButton(
            onPressed: () {
              print(dividir());
              setState(dividir);
            },
            child: Icon(
              Icons.border_horizontal,
              size: 60,
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(10),
              color: Colors.blue,
              width: 500,
              height: 150,
              child: Text(
                this.resp,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
