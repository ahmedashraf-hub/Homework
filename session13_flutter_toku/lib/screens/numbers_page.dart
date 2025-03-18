import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/models/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'ni',
      enName: 'two',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'san',
      enName: 'three',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'yon',
      enName: 'four',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'go',
      enName: 'five',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'roku',
      enName: 'six',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'shichi',
      enName: 'seven',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'eight',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'kyū',
      enName: 'nine',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'jū',
      enName: 'ten',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0XFF46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(color: Color(0XFFEF9235), item: numbers[index]);
        },
      ),
    );
  }
}
