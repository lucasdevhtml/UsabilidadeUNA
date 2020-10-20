import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => PrimeiraTela(),
          '/segunda': (context) => SegundaTela(),
          '/terceira': (context) => TerceiraTela(),
          '/quarta': (context) => QuartaTela(),
        },
      ),
    );

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = Corpo('1');
    Botao botao = Botao('segunda');
    return Tela('Primeira Tela', corpo, botao);
  }
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = Corpo('2');
    Botoes botao = Botoes(
      'terceira',
      'primeira',
      'quarta',
    );
    return Tela('Segunda Tela', corpo, botao);
  }
}

class TerceiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = Corpo('3');
    Botoes botao = Botoes('quarta', 'segunda', '');
    return Tela('Terceira Tela', corpo, botao);
  }
}

class QuartaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = Corpo('4');
    Botoes botao = Botoes('segunda', 'terceira', '');
    return Tela('Primeira Tela', corpo, botao);
  }
}

class Corpo extends StatelessWidget {
  final String texto;

  Corpo(this.texto);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '${this.texto}',
        style: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
      padding: EdgeInsets.all(40),
      margin: EdgeInsets.all(25),
    );
  }
}

class Botao extends StatelessWidget {
  final String proxima;
  Botao(this.proxima);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Segunda'),
      onPressed: () {
        Navigator.pushNamed(context, '/${this.proxima}');
      },
    );
  }
}

class Botoes extends StatelessWidget {
  final String seguinte;
  final String anterior;
  String outra = '';
  Botoes(
    this.seguinte,
    this.anterior,
    this.outra,
  );
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RaisedButton(
          child: Text('$anterior'),
          onPressed: () {
            Navigator.pushNamed(context, '/${this.anterior}');
          },
        ),
        RaisedButton(
          child: Text('$seguinte'),
          onPressed: () {
            Navigator.pushNamed(context, '/${this.seguinte}');
          },
        ),
        RaisedButton(
            child: Text('$outra'),
            onPressed: () {
              Navigator.pushNamed(context, '/${this.outra}');
            })
      ],
    );
  }
}

class Tela extends StatelessWidget {
  final String titulo;
  final Widget corpo, navegacao;
  Tela(this.titulo, this.corpo, this.navegacao);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${this.titulo}'),
      ),
      body: Center(
        child: Column(
          children: [
            corpo,
            navegacao,
          ],
        ),
      ),
    );
  }
}
