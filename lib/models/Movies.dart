import 'package:flutter/material.dart';

class Movies {
  final String image, title;
  final String duration;
  final Color bgColor;

  Movies({
    required this.image,
    required this.title,
    required this.duration,
    this.bgColor = const Color.fromARGB(255, 255, 255, 255),
  });
}

List<Movies> demo_movies = [
  Movies(
    image: 'imagens/img_1.png', 
    title: 'Animals on the Loose', 
    duration: '45m',
    bgColor: const Color(0xFFFEFBF9),
  ),
  Movies(
    image: 'imagens/img_2.png', 
    title: "Inside Bill's Brains", 
    duration: '1 Temporada',
    bgColor: const Color(0xFFFEFBF9),
  ),
  Movies(
    image: 'imagens/img_3.png', 
    title: 'Exodus: Gods and Kings', 
    duration: '2h 30m',
    bgColor: const Color(0xFFFEFBF9),
  ),
  Movies(
    image: 'imagens/img_4.png', 
    title: 'Our Planet', 
    duration: '48 ~ 53m',
    bgColor: const Color(0xFFFEFBF9),
  ),
  Movies(
    image: 'imagens/img_5.png', 
    title: 'Aquaman', 
    duration: '2h 23m',
    bgColor: const Color(0xFFFEFBF9),
  ),
];
