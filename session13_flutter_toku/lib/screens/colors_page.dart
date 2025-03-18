import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/models/item_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      jpName: 'kuroi',
      enName: 'black',
      sound: 'sounds/colors/black.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'chairo',
      enName: 'brown',
      sound: 'sounds/colors/brown.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'hokori tppoi kiiro',
      enName: 'dusty yellow',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'haiiro',
      enName: 'gray',
      sound: 'sounds/colors/gray.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_green.png',
      jpName: 'midori',
      enName: 'green',
      sound: 'sounds/colors/green.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_red.png',
      jpName: 'aka',
      enName: 'red',
      sound: 'sounds/colors/red.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_white.png',
      jpName: 'shiro',
      enName: 'white',
      sound: 'sounds/colors/white.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/yellow.png',
      jpName: 'kiiro',
      enName: 'yellow',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Colors'), backgroundColor: Color(0XFF46322B)),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(color: Color(0XFF79359F), item: numbers[index]);
        },
      ),
    );
  }
}
