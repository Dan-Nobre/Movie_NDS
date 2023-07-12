import 'package:flutter/material.dart';
import 'package:movie_nds/app/CardMovie.dart';

class CarouselScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          CardMovie(),
          CardMovie(),
          CardMovie(),
        ],
      ),
    );
  }
}
