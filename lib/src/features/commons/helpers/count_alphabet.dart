void main() {
  String text = "Today is my birthday, I'm 26 years old now.";
  countAlphabet(text);
}

void countAlphabet(String text) {
  // Write code here
  // print the alphabet count
  Map<String, int> alphabetCount = {};

  for (int i = 0; i < text.length; i++) {
    String char = text[i].toLowerCase();

    if (!RegExp(r'[A-Z\s]').hasMatch(char)) {
      alphabetCount[char] = (alphabetCount[char] ?? 0) + 1;
    }
  }

  print(alphabetCount);
}
