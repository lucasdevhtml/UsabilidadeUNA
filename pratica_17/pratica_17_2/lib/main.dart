import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        RotaFinal.caminhoDaRota: (context) => RotaFinal(),
        SegundaRota.caminhoDaRota: (context) => SegundaRota(),
      },
    );
  }
}

//Priemira rota

class PrimeiraRota extends StatelessWidget {
  final TextEditingController valueRealController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valor em Real'),
      ),
      body: Column(
        children: [
          TextField(
            controller: valueRealController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => valueRealController.clear()),
                border: OutlineInputBorder(),
                labelText: 'Informe o valor em Real '),
          ),
          RaisedButton.icon(
            icon: Icon(Icons.navigate_next),
            label: Text('Proximo'),
            onPressed: () {
              Navigator.pushNamed(context, SegundaRota.caminhoDaRota,
                  arguments: ArgumentosDaRota('Cotação',
                      double.tryParse(this.valueRealController.text)));
            },
          ),
        ],
      ),
    );
  }
}

//SEGUNDA ROTA
class SegundaRota extends StatelessWidget {
  static const caminhoDaRota = '/rotadois';

  final TextEditingController valueDolarController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos = ModalRoute.of(context).settings.arguments;
    double real = argumentos.valor;
    return Scaffold(
      appBar: AppBar(
        title: Text('Valor em Dolar'),
      ),
      body: Column(
        children: [
          TextField(
            controller: valueDolarController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => valueDolarController.clear()),
                border: OutlineInputBorder(),
                labelText: 'Informe o valor em Dolar '),
          ),
          RaisedButton.icon(
            icon: Icon(Icons.navigate_next),
            label: Text('Proximo'),
            onPressed: () {
              Navigator.pushNamed(context, RotaFinal.caminhoDaRota,
                  arguments: ArgumentosDaSegundaRota('Resultado', real,
                      double.tryParse(this.valueDolarController.text)));
            },
          ),
        ],
      ),
    );
  }
}

class RotaFinal extends StatelessWidget {
  static const caminhoDaRota = '/rotaFinal';
  @override
  Widget build(BuildContext context) {
    ArgumentosDaSegundaRota argumentos =
        ModalRoute.of(context).settings.arguments;
    double convertido = argumentos.real / argumentos.dolar;
    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos.titulo),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(100),
            child: Text(
              'BRL${argumentos.real}, USD${argumentos.dolar} = $convertido',
              style: TextStyle(
                fontSize: 18,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ArgumentosDaRota {
  String titulo;
  double valor;
  ArgumentosDaRota(this.titulo, this.valor);
}

class ArgumentosDaSegundaRota {
  String titulo;
  double real;
  double dolar;
  ArgumentosDaSegundaRota(this.titulo, this.real, this.dolar);
}
