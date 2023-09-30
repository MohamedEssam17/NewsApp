import 'package:flutter/material.dart';
import 'package:newsapptry/screens/homepage.dart';

void main() {
  
  runApp(const NewsView());
}

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homepage(),
    );
  }
}
