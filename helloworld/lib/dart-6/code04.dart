import 'dart:async';
void main(){
  Future<int> getFuture(){
    return Future.error("This is an error");

  }
  getFuture();
}