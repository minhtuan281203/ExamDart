import 'dart:collection';
void main(){
  List q = List.generate(2, (_) => List.generate(2, (_) => 0));
  print(q );
  List w = List.generate(3, (_) => List.generate(3, (_) => 0));
  print(w);
}