import 'package:flutter/material.dart';
import 'package:toku/components/phrases_item.dart';
import 'package:toku/models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> phrasesList = const [
    ItemModel(
      jpName: 'rai masu ka?',
      enName: 'Are you comming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'koudoku wa wasure nai de kudasai .',
      enName: "don't forget to subscribe.",
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      jpName: 'kibun wa dou desu ka?',
      enName: 'how are you feeling?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      jpName: 'watashi wa anime ga daisuki desu.',
      enName: 'i love anime.',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      jpName: 'programming ga daisuki desu.',
      enName: 'i love programming.',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      jpName: 'programming wa kantan desu.',
      enName: 'programming is easy.',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      jpName: 'anata no namae wa nani desu ka?',
      enName: 'what is your name?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      jpName: 'doko ni iku no?',
      enName: 'where are you going?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      jpName: 'hai 、ikiba masu.',
      enName: 'yes i am coming.',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0XFF46322B),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            color: Color(0XFF50ADC7),
            item: phrasesList[index],
          );
        },
      ),
    );
  }
}
