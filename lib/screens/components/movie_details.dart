import 'package:flutter/material.dart';
import '../../models/Movies.dart';

class MovieDetailsPage extends StatelessWidget {
  final Movies movie;

  const MovieDetailsPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(movie.image),
            const SizedBox(height: 20),
            Text('Duration: ${movie.duration}'),
          ],
        ),
      ),
    );
  }
}
