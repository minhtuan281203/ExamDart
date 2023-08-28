import 'dart:io';
void main(){
  print("Enter your birth place :");
  String? birthplace = stdin.readLineSync();
  print("Your birthplace is ${birthplace}");
}