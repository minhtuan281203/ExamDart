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

  void updateSong(String oldName, Song newSong) {
    var index = songs.indexWhere((song) => song.name == oldName);
    if (index != -1) {
      songs[index] = newSong;
      print("Da cap nhat bai hat.");
    } else {
      print("Khong tim thay bai hat de cap nhat.");
    }
  }

  void displaysongs(){
    if (songs.isEmpty){
      print("Bai hat trong.");
    }else{
      print("Bai hat:");
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
    print("3. Cap nhat bai hat ");
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

      case 3:
        print("Nhap ten bai hat muon cap nhat:");
        var oldName = stdin.readLineSync();
        var index =
        addressSong.songs.indexWhere((song) => song.name == oldName);
        if (index != -1) {
          print("Nhap ten bai hat moi:");
          var newName = stdin.readLineSync();
          print("Nhap ten tac gia moi:");
          var newAuthor = stdin.readLineSync();
          var newSong = Song(newName!, newAuthor!);
          addressSong.updateSong(oldName!, newSong);
        } else {
          print("Khong tim thay bai hat de cap nhat.");
        }
        break;

      case 4 :
        addressSong.displaysongs();
        break;
      case 5:
        print("Ket thuc chuong trinh");
        return;

      default:
        print("Lua chon khong hop le.");

    }
  }
}


























