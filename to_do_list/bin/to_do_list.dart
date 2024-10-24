import 'dart:io';

import 'package:to_do_list/to_do_list.dart' as todo;

void main(){
  String menu;
  print("=====To Do List=====");
  do{
    print("");
    print("Haii");
    print("1. Buat jadwal");
    print("2. Lihat jadwal");
    print("3. Cari tugas");
    print("4. Hapus tugas");
    print("Pilih menu (X untuk keluar): ");
    menu = stdin.readLineSync()!;

    if (menu == "1"){
        todo.buatList();
    }
    else if (menu == "2"){
      todo.lihatList();
    }
    else if (menu == "3"){
      todo.cariTugas();
    }
    else if (menu == "4"){
      todo.hapusTugas();
    }
    else if(menu == "X" || menu == "x"){
      print("Keluar");
      break;
    }
    else{
      print("Angka salah! Harap masukan angka sesuai menu");
    }

  }while(menu!= "X" || menu!="x");
}
