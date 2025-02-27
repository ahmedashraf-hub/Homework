/* Count Words in a Sentence
 Write a function that counts the number of words in a given sentence.
 Words are separated by spaces, and the function should ignore extra spaces.
  */
void main() {
  getCountOfWords('Every thing in a flutter is a widget');
}

void getCountOfWords(String sentence) {
  List<String> words = sentence.trim().split(RegExp(r'\s+'));
  print(words);
  int wordsNumber = words.length;
  print('Number of words: $wordsNumber words.');
}
