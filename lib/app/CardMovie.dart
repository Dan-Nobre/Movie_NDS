import 'package:flutter/material.dart';

/// Flutter code sample for [Card].

void main() => runApp(const CardMovieApp());

class CardMovieApp extends StatelessWidget {
  const CardMovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: CardMovie(),
      ),
    );
  }
}

class CardMovie extends StatelessWidget {
  const CardMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 111,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200], // Cor de fundo da borda
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "imagens/img_1.png",
                  height: 183,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            const Padding(padding: EdgeInsets.all(10))
          ],
        ),
      
    );
  }
}
