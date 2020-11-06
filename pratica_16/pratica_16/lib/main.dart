import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(home: Home(), routes: {
        '/desc': (context) => NovaYork(),
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
                  "https://images.pexels.com/photos/213781/pexels-photo213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => NovaYork())),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213782/pexels-photo213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213783/pexels-photo213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213784/pexels-photo213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213785/pexels-photo213785.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213786/pexels-photo213786.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213787/pexels-photo213787.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213788/pexels-photo213788.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213789/pexels-photo213789.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
        ],
      ),
    );
  }
}

class NovaYork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova York"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213781/pexels-photo213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home())),
          ),
        ],
      ),
    );
  }
}
