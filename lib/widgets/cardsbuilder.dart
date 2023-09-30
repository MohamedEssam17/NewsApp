import 'package:flutter/material.dart';
import 'package:newsapptry/models/cards_models.dart';
import 'package:newsapptry/widgets/cards_item.dart';

class Cardsbuilder extends StatelessWidget {
  const Cardsbuilder({super.key});
  final List<CardsModels> cardloop = const [
    CardsModels(cardname: "Business", image: "assets/business.jpg"),
    CardsModels(cardname: "Entertainment", image: "assets/entertaiment.avif"),
    CardsModels(cardname: "General", image: "assets/general.jpg"),
    CardsModels(cardname: "health", image: "assets/health.jpg"),
    CardsModels(cardname: "science", image: "assets/science.jpg"),
    CardsModels(cardname: "sports", image: "assets/sports.jpg"),
    CardsModels(cardname: "technology", image: "assets/tech.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cardloop.length,
          itemBuilder: (context, index) {
            return CardsItem(
              item: cardloop[index],
            );
          }),
    );
  }
}
