import 'package:flutter/material.dart';

/// Flutter code sample for [Card].

void main() => runApp(const CardMovieApp());

class CardMovieApp extends StatelessWidget {
  const CardMovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const CardMovie(),
      ),
    );
  }
}

class CardMovie extends StatelessWidget {
  const CardMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset(
                        "imagens/img_1.png",
                        height: 200,
                      ),
              title: Text('Filme de Ciclano'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Padding(padding: EdgeInsets.all(10))
          ],
        ),
      ),
    );
  }
}
