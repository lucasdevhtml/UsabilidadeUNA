import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        // Inicie o aplicativo com a rota nomeada "/".
        // Neste exemplo, o aplicativo inica no widget PrimeiraTela.
        initialRoute: '/',
        routes: {
          // Quando navegar pela rota nomeada "/", construa o widget PrimeiraTela.
          '/': (context) => PrimeiraTela(),
          // Quando navegar pela rota nomeada "/segunda", construa o widget SegundaTela.
          '/segunda': (context) => SegundaTela(),
          // Quando navegar pela rota nomeada "/terceira", construa o widget TerceiraTela.
          '/terceira': (context) => TerceiraTela(),
          // Quando navegar pela rota nomeada "/quarta", construa o widget TerceiraTela.
          '/quarta': (context) => QuartaTela(),
        },
      ),
    );

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Tela'),
      ),
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/quarta');
                },
                child: Text('<'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/segunda');
                },
                child: Text('>'),
              ),
            ]),
      ),
    );
  }
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Tela"),
      ),
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('<'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/terceira');
                },
                child: Text('>'),
              ),
            ]),
      ),
    );
  }
}

class TerceiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terceira Tela"),
      ),
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/segunda');
                },
                child: Text('<'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/quarta');
                },
                child: Text('>'),
              ),
            ]),
      ),
    );
  }
}

class QuartaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quarta Tela"),
      ),
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  // Navegar a terceira tela.
                  Navigator.pushNamed(context, '/terceira');
                },
                child: Text('<'),
              ),
              RaisedButton(
                onPressed: () {
                  // Navegar de volta para a primeira tela.
                  Navigator.pushNamed(context, '/');
                },
                child: Text('>'),
              ),
            ]),
      ),
    );
  }
}
