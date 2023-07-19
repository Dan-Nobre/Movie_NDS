import 'package:flutter/material.dart';
import 'package:movie_nds/screens/components/movie_details.dart';
import '../../models/Movies.dart'; // Importe a nova página criada

class ListCardMovies extends StatelessWidget {
  const ListCardMovies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(demo_movies.length, (index) {
          Movies movie = demo_movies[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MovieDetailsPage(movie: movie),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(right: 8),
              width: 110,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(movie.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          );
        }),
      ),
    );
  }
}
