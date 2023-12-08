import 'dart:io';

void main() {
  print("Wake Up!!!");

  // Call willDo(3) and print the text that is returned
  willDo(3).then((result) {
    print(result);
  });

  // End Code
  print("Hey, Wake Up!!!!!");
}

Future<String> willDo(int sec) async {
  return Future.delayed(
    Duration(seconds: sec),
        () => "I'm up",
  );
}
