import 'package:flutter/material.dart';

class InstagramStories extends StatelessWidget {
  InstagramStories(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.height,
      required this.padding});

  final String imagePath;
  final String name;
  final double height;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          padding: EdgeInsets.all(padding),
          margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(181, 56, 155, 1),
              Color.fromRGBO(245, 182, 121, 1)
            ], begin: Alignment.topRight, end: Alignment.bottomLeft),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            '$imagePath',
          ),
        ),
        Text('$name'),
      ],
    );
  }
}
