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

  // ignore: non_constant_identifier_names
  calcula_Imc() {
    double num01 = double.tryParse(this.num01Controller.text); /*peso*/
    double num02 = double.tryParse(this.num02Controller.text); /*altura*/
    double imc = num01 / (num02 * num02);
    String classificacao = '';

    if (imc < 16)
      classificacao = 'magreza grave';
    else if (imc >= 16 && imc < 17)
      classificacao = 'magreza moderada';
    else if (imc >= 17 && imc < 18.5)
      classificacao = 'Magreza leve';
    else if (imc >= 18.5 && imc < 25)
      classificacao = 'saudavel';
    else if (imc >= 25 && imc < 30)
      classificacao = 'sobrepeso';
    else if (imc >= 30 && imc < 35)
      classificacao = 'obesidade grau 1';
    else if (imc >= 35 && imc < 40)
      classificacao = 'obesidade grau 2';
    else if (imc >= 40) classificacao = 'obesidade grau 3';
    this.resp = 'o IMC é":$imc \n e a classificacao é:$classificacao';
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
                labelText: 'informe o peso',
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
                labelText: 'informe a altura',
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              print(calcula_Imc());
              setState(calcula_Imc);
            },
            child: Text(
              'Calculo de IMC',
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
