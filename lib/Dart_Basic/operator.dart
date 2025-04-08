void main(List<String> args) {
  //aritmatika
  int a = 1 + 2;
  print(a);

  //relasi
  String kota = 'Sleman';
  if (kota == 'sleman') {
    print('ya kota yang masuk adalah sleman');
  } else {
    print('bukan sleman');
  }

  //operator Logika
  String kota2 = 'semarang';
  if (kota == 'Sleman' && kota2 == 'Jogja') {
    print('benar, kota yang kamu masukan adalah Sleman atau Semarang');
  } else {
    print('kota yang anda masukkan bukan Sleman atau Semarang');
  }

  //Operator cek tipe data
  if (kota is bool) {
    print('ya dia string');
  } else {
    print('bukan string');
  }
}
