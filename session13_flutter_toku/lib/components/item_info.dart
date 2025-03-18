import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: TextStyle(color: Color(0XFFFFFFFF), fontSize: 16),
              ),
              Text(
                item.enName,
                style: TextStyle(color: Color(0XFFFFFFFF), fontSize: 16),
              ),
            ],
          ),
        ),
        Spacer(flex: 1),
        IconButton(
          onPressed: () {
            item.playSound();
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Color(0XFFFFFFFF),
            size: 24,
          ),
        ),
      ],
    );
  }
}
