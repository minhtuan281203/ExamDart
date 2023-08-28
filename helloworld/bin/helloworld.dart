import 'dart:math';

import 'package:helloworld/helloworld.dart' as helloworld;

void main(List<String> arguments) {
  print('Hello world: ${helloworld.calculate()}!');
//   eg:
  print(3 / 0);  //error
  print(pow(2, 5));
  String myName = "John is from Viet Nam";
  print(myName.toUpperCase());

  int num1 = 13; double num2 = 14.2; var exponentNum = 1.2e3; //e3 is *10^3
  print(num1);
  print(num2);
  print(exponentNum);
//convert string to number
  var stringNum = "14.7";
  var convertNum = double.parse(stringNum);
  print(stringNum.runtimeType);
  print(convertNum.runtimeType);

  var round = 3.1.round(); //làm tròn
  print(round);
  //replace all "x" to blank string
  var errorMes = "Uxh oxh, thexre's a bunxch of txypos";
  print(errorMes.replaceAll("x", ""));

  String nameOne = "Jose";
  var nameTwo = "Mimi";
  print("this is how to escape \$ dollar sign");
  print("the length of nameTwo is ${nameTwo.length}");
  //boolean
  var theFalse = false;
  print(theFalse);
  //list...
  var myList = ['A', 'B', 'C', 'D', 'E'];
  print(myList[0]);
  print(myList.sublist(1, 3));
  print(myList[myList.length - 1]);  // lấy ptu cuoi
  print(myList.last);

        var list1 = ['A', 'B']; var list2 = ['X', 'Y'];
        print(list1 + list2);
        print([0, 1, 2, ...list2]);   // spread operator
  //SET... : giống list nhưng ptu không trùng lặp
  var ftballTeam = {'Andrew', 'Andrew', 'Zach'};
  //
  var elements = {'O', 'K', 'Ni', 'Rd'};
  elements.add('F');
  elements.addAll(['H', 'C']);
  print(elements);
//if elements exist, can't add more than once
      //lấy ele trùng : result is 'Calvin'
  var footballTeam = {'Andrew', 'Zach', 'Calvin'};
  var playCast = {'David', 'Calvin', 'Claire'};
  print(footballTeam.intersection(playCast));
  print(playCast.intersection(footballTeam));

  //object
  var emps = {
    'David': 10,
    'Claire': 5,
    'Calvin': 3
  };
  print(emps['David']);
    //add new emp
  emps['Zed'] = 1;    print(emps);
  print(emps['MISSING']);     //ele ko có thì trả null
  var removedValue = emps.remove('Calvin');
  print(removedValue);  //vị trí remove
  print(emps);   //obj sau remove
  //
  var alpha = 0, beta = 0;
  beta = alpha++;
  print("alpha is: $alpha");
  print("beta is: $beta");
//type operator
   var number = 1;
   print(number is int);
  //and or not
  print(1 == 1 && 1 != 2);
  print(1 != 1 || 1 == 1);
  print(!(true) && true);
      // kiểu var
  var a = 0;
  print(a);
  a = 20; print(a);
          //kiểu final   : kbao xong ko thể gán (version = 3.2) error
  final version = 2.1;   print(version);
  //có thể tính tgian chạy
  final runtime = a*10; print(runtime);  // a = 20 in line 88
       //kểu const
  const myVar = 100;
  print(myVar);

  var p = 100;
  dynamic b = 100;
  print(b);
}
