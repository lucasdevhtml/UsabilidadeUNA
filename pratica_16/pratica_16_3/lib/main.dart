import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Mensagem {
  String titulo;
  String descricao;
  Mensagem(this.titulo, this.descricao);
}

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  Mensagem msg;
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
            onTap: () {
              msg = Mensagem('Nova York',
                  ' Nova York é a cidade mais populosa dos Estados Unidos e o centro da Região Metropolitana de Nova Iorque, uma das áreas metropolitanas mais populosas do mundo. É também a terceira cidade mais populosa da América, atrás de São Paulo e Cidade do México.');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Descricao(msg)));
            },
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                  "https://www.infoescola.com/wp-content/uploads/2009/04/Londres_215525215-1000x505.jpg"),
            ),
            onTap: () {
              msg = Mensagem('Londres',
                  ' Londres é uma das maiores metrópoles do planeta, capital da Inglaterra e da Grã-Bretanha, localizada às margens do Rio Tâmisa. Esta cidade abriga hoje mais de 7 milhões de pessoas. Um dos mais importantes núcleos financeiros mundiais, ela integra com destaque o circuito político, cultural, artístico e fashion do globo.');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Descricao(msg)));
            },
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                  "https://s3.lufthansacc.com/wp-content/uploads/2018/05/paris-torre-eiffel-franca.jpg"),
            ),
            onTap: () {
              msg = Mensagem('Paris',
                  '  Paris é um dos principais centros de finanças, diplomacia, comércio, moda, ciência e artes da Europa. A cidade de Paris é o centro e sede de governo da região administrativa de Ilha de França, que tem uma população estimada em 2020 de 12 278 210 habitantes, ou cerca de 18% da população da França.');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Descricao(msg)));
            },
          ),
        ],
      ),
    );
  }
}

class Descricao extends StatelessWidget {
  final Mensagem msg;
  Descricao(this.msg);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${msg.titulo}'),
        backgroundColor: Colors.green,
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(100),
          child: Text(
            '${msg.titulo}',
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
            '${msg.descricao}',
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
