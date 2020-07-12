import 'package:flutter/material.dart';

class ReccomendationTile extends StatelessWidget {
  const ReccomendationTile({
    @required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return ReccomendedChannelDialog();
          },
        );
      },
      child: Card(
        child: Center(
          child: Text("#Channel $index"),
        ),
      ),
    );
  }
}

class ReccomendedChannelDialog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
