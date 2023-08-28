import 'dart:io';
class Song{
  String name;
  String author;
  Song(this.name , this.author);
}
class AddressSong{
  List<Song> songs =[];
  void addSong(Song song){
    songs.add(song);
  }
  void removeSong(String name){
    songs.removeWhere((Song) => Song.name == name);
  }

  void displaysongs(){
    if (songs.isEmpty){
      print("Danh ba trong.");
    }else{
      print("Danh ba:");
      for (var Song in songs){
        print("Ten : ${Song.name}, Tac gia: ${Song.author}");
      }
    }
  }
}

void main(){
  var addressSong = AddressSong();
  while (true){
    print("1. Them bai hat ");
    print("2. Xoa bai hat ");
    print("3. Hien thi bai hat");
    print("4. Thoat ");
    var readLineSync = stdin.readLineSync();
    var choice = int.parse(readLineSync!);

    switch(choice){
      case 1 :
        print("Nhap ten bai hat:");
        var name = stdin.readLineSync();
        print("Nhap ten tac gia:");
        var author = stdin.readLineSync();
        var song = Song(name!, author!);
        addressSong.addSong(song);
        print("Bai hat da dc them.");
        break;

      case 2:
        print("Nhap ten bai hat de xoa:");
        var name = stdin.readLineSync();
        addressSong.removeSong(name!);
        print("Bai hat da dc xoa");
        break;

      case 3 :
        addressSong.displaysongs();
        break;
      case 4:
        print("Ket thuc chuong trinh");
        return;

      default:
        print("Lua chon khong hop le.");

    }
  }
}


























