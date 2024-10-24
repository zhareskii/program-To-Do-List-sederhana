import 'dart:io';

List<String> todos= [];

void buatList() {
  String doing;
  do {
    print("Tambah kegiatan (X untuk selesai): ");
    doing = stdin.readLineSync()!;
    if (doing.toLowerCase() != "x") {
      todos.add(doing);
    }
  } while (doing.toLowerCase() != "x");
  print("Selesai mendaftar kegiatan");
}

void lihatList() {
  print("Daftar kegiatan kamu:");
  for (int i = 0; i < todos.length; i++) {
    print("${i + 1}. ${todos[i]}");// biar daftar tugasnya urut ada nomornya
  }
}

void cariTugas(){
  print("Cari tugas: ");
  String cari = stdin.readLineSync()!;
  List<int> hasil = [];
  for (int i = 0; i < todos.length; i++) {
    if (todos[i].toLowerCase().contains(cari)) {
      hasil.add(i + 1);
    }
  }
  if (hasil.isEmpty) {
    print("Tugas tidak ditemukan.");
  } else {
    print("Tugas ditemukan pada nomor:");
    for (int index in hasil) {
      print("$index. ${todos[index - 1]}");
    }
  }
}

void hapusTugas(){
  print("Tugas nomor berapa yang mau dihapus?");
  for (int i = 0; i < todos.length; i++) {
  print("${i + 1}. ${todos[i]}");}
  String cari = stdin.readLineSync()!;
  try {
    int index = int.parse(cari) - 1;
    if (index >= 0 && index < todos.length) {
      todos.removeAt(index);
      print("Tugas berhasil dihapus.");
    } else {
      print("Nomor tugas tidak valid.");
    }
  } catch (e) {
    print("Masukkan nomor tugas yang valid.");
  }
}