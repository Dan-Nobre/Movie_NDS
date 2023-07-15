// import 'package:flutter/material.dart';
// import 'package:movie_nds/app/CardMovie.dart';

// class CarouselScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: 
//       PageView(
//         children: const [
//           CardMovie(),
//           CardMovie(),
//           CardMovie(),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(const ImageCarouselApp());

class ImageCarouselApp extends StatelessWidget {
  const ImageCarouselApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageCarousel(),
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  ImageCarousel({Key? key}) : super(key: key);

  final List<String> imagePaths = [
    'imagens/img_1.png',
    'imagens/img_2.png',
    'imagens/img_3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        // padding: EdgeInsets.only(bottom: 20),
        itemCount: imagePaths.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200], // Cor de fundo da borda
              ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
              imagePaths[index],
              // width: 111,
              // height: 183,
              fit: BoxFit.cover,
            ),
            ),
          );
        },
      ),
    );
  }
}

