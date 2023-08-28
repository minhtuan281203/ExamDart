import 'dart:io';
class Contact{
  String name;
  String phoneNumber;
  Contact(this.name , this.phoneNumber);
}
class AddressBook{
  List<Contact> contacts =[];
  void addContact(Contact contact){
    contacts.add(contact);
  }
  void removeContact(String name){
    contacts.removeWhere((contact) => contact.name == name);
  }

  void displayContacts(){
    if (contacts.isEmpty){
      print("Danh ba trong.");
    }else{
      print("Danh ba:");
      for (var contact in contacts){
        print("Ten : ${contact.name}, So dien thoai: ${contact.phoneNumber}");
      }
    }
  }
}

  void main(){
  var addressBook = AddressBook();
  while (true){
    print("1. Them lien he ");
    print("2. Xoa lien he ");
    print("3. Hien thi danh ba");
    print("4. Thoat ");
    var readLineSync = stdin.readLineSync();
    var choice = int.parse(readLineSync!);

    switch(choice){
      case 1 :
        print("Nhap ten lien he:");
        var name = stdin.readLineSync();
        print("Nhap so dien thoai lien he:");
        var phoneNumber = stdin.readLineSync();
        var contact = Contact(name!, phoneNumber!);
        addressBook.addContact(contact);
        print("Lien he da dc them.");
        break;

      case 2:
        print("Nhap ten lien he de xoa:");
        var name = stdin.readLineSync();
        addressBook.removeContact(name!);
        print("lien he dac dc xoa");
        break;

      case 3 :
        addressBook.displayContacts();
        break;
      case 4:
        print("Ket thuc chuong trinh");
        return;

      default:
        print("Lua chon khong hop le.");

    }
  }
  }


























