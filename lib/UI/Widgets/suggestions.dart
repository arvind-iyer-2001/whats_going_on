import 'package:flutter/material.dart';

// Widgets
import '../SubWidgets/reccomendationTile.dart';



class Suggestions extends StatelessWidget {
  const Suggestions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 0.45,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return ReccomendationTile(index: index);
        },
      ),
    );
  }
}
