import 'package:flutter/material.dart';
import 'package:newsapptry/models/cards_models.dart';
import 'package:newsapptry/screens/catoigrypage.dart';

class CardsItem extends StatelessWidget {
  const CardsItem({super.key, required this.item});
  final CardsModels item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return  Cartoigrypage(category: item.cardname,);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(item.image))),
          child: Center(
            child: Text(
              item.cardname,
              style: const TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
