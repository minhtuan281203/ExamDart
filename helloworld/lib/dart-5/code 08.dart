import 'dart:collection';
 base class Items extends LinkedListEntry<Items> {
  final int id;
  final String name;
  Items(this.id, this.name);
  @override
  String toString(){
    return '$id : $name';
  }
}
void main() {
  final linkedList = LinkedList<Items>();
  linkedList.addAll(
      [Items(1, 'jon'), Items(2, 'natalia'), Items(3, 'dina')]);
  print(linkedList);
}