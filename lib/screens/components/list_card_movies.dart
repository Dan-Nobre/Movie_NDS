import 'package:flutter/material.dart';
import '../../models/Movies.dart';

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
        return Container(
          margin: const EdgeInsets.only(right: 8),
          width: 110,
          height: 160,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(movie.image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(6)),
          );}
        )
      ),
    );
  }
}
