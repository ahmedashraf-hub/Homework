/* Find the Longest Word
 Write a function that takes a sentence as input and returns the longest word in the sentence.
 If multiple words have the same longest length, return the first one that appears.
*/
void main() {
  print(getLongestWord('every thing in a flutter is a widget'));
}

String getLongestWord(String sentence) {
  List<String> words = sentence.split(' ');
  String longestWord = '';

  for (String word in words) {
    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }

  return longestWord;
}
  // List<String> words = [];
  // String word1 = sentence.substring(0, 5); //every
  // String word2 = sentence.substring(6, 11); //thing
  // String word3 = sentence.substring(12, 14); //in
  // String word4 = sentence.substring(15, 16); //a
  // String word5 = sentence.substring(17, 24); //flutter
  // String word6 = sentence.substring(25, 27); //is
  // String word7 = sentence.substring(28, 29); //a
  // String word8 = sentence.substring(30, 36); //widget
  // words.addAll([word1, word2, word3, word4, word5, word6, word7, word8]);
  // for (var i = 0; i < words.length; i++) {
  //   for (var j = i + 1; j < words.length; j++) {
  //     if (words[i].length >= words[j].length ||
  //         words[i].length == words[j].length) {
  //       print(words[i]);
  //     }
  //   }
  // }