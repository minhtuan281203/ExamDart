import 'dart:collection';

void main(){
  var s = new LinkedHashMap();
  s['1'] = 'alice';
  s[2]   = 'bob';
  s[3]= 'cindy';
  print(s);

  var a = new LinkedHashSet();
  a.add('dan');
  a.add('rony ');
  a.add('sam');
  print(a);
}