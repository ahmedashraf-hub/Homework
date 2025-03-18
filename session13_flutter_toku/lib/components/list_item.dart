import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/item_model.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: Color(0XFFFFF6DC), child: Image.asset(item.image!)),
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}
