import 'dart:io';
import 'dart:async';
void main(){
  File file = new File(Directory.current.path+"\\names.txt");

  Future<String> f = file.readAsString();
  f.then((data) => print(data));
  print("main ends here");
}