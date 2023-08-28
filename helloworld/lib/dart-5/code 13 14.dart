void main(){
  int a =5;
  int b= 0;
  int res;
  try{
    res = a~/b;
  }
  on IntegerDivisionByZeroException{
    print('Cannot divide by zero');
  }finally{
    print("Finally block executed");
  }

  //14
  void checkAge(int age){
    if(age<0){
      throw new FormatException();
    }
  }
  try{
    checkAge(-10
    );
  }
  catch(e){
    print('Age cannot be negative ');
  }

}