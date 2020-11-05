import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        RotaGenerica.caminhoDaRota: (context) => RotaGenerica(),
      },
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  final TextEditingController temperatureCelsiusController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversos de Celsius para Fahrenheit'),
      ),
      body: Column(
        children: [
          TextField(
            controller: temperatureCelsiusController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => temperatureCelsiusController.clear()),
                border: OutlineInputBorder(),
                labelText: 'Temperatura em graus Celsius'),
          ),
          RaisedButton(
            child: Text('Calcular'),
            onPressed: () {
              Navigator.pushNamed(context, RotaGenerica.caminhoDaRota,
                  arguments: ArgumentosDaRota('Valor convertido',
                      double.tryParse(this.temperatureCelsiusController.text)));
            },
          ),
        ],
      ),
    );
  }
}

class RotaGenerica extends StatelessWidget {
  static const caminhoDaRota = '/rotaGenerica';
  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos = ModalRoute.of(context).settings.arguments;
    double convertido = argumentos.temperatura * 1.8 + 32;
    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos.titulo),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(100),
            child: Text(
              'Graus celsius ${argumentos.temperatura}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Graus Fahrenheit $convertido',
            textAlign: TextAlign.end,
            style: TextStyle(
                fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class ArgumentosDaRota {
  String titulo;
  double temperatura;
  ArgumentosDaRota(this.titulo, this.temperatura);
}
