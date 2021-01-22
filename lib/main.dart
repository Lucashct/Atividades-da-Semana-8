import 'package:flutter/material.dart';
import 'views/Telas.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    title: 'AtividadeFlutterNavigation',
    debugShowCheckedModeBanner: false,
  ));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            Padding(padding: EdgeInsets.all(15.3)),
            FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Pagina2()));
                },
                child: Column(
                  children: [Text('Page 2'), Icon(Icons.arrow_forward)],
                )),
            FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Pagina3()));
                },
                child: Column(
                  children: [Text('Page 3'), Icon(Icons.arrow_forward)],
                ))
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Flutter Navigattor'),
      ),
      body: Center(
        child: ListView(
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagina1()));
              },
              child: Text('Tela 1'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagina2()));
              },
              child: Text('Tela 2'),
            )
          ],
        ),
      ),
    );
  }
}
