void main(List<String> args) {
  final myInteger = 10;
  if (myInteger == 10) {
    print('ini adalah angka sepuluh');
  } else if (myInteger == 9) {
    print('ini adalah angka sembilan');
  } else if (myInteger == 5) {
    print('ini adalah angka 5');
  } else {
    print('ini angka lainnya');
  }

  switch (myInteger) {
    case 10:
      print('Ini angka sepuluh');
      break;
    case 9:
      print('Ini angka sembilan');
      break;
    case 5:
      print('Ini angka lima');
      break;
    default:
      print('Tidak semuanya');
  }

  //Jika Pilihannya cumna 2 bisa gunakan hirarki ini
  myInteger == 10 ? print('ini sepuluh') : print('bukan sepuluh');
}
