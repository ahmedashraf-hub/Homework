import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;
  const ItemModel({
    this.image,
    required this.jpName,
    required this.enName,
    required this.sound,
  });

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}

// IMPORTANt..> you can create specific class for every page such as family members and colors but we didn't need for that in our application.
// if you can't disover that, you can listen l:144