void main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    print('nilai : $i');
  }

  int i = 0;
  while (i < 10) {
    print('Nilai while : $i');
    i++;
  }

  int value = 0;
  do {
    print('nilai do : $value');
    value++;
  } while (value < 10);

  List<String> listNama = ['Niam', 'Haikal', 'Hiziam'];
  for (int i = 0; i < listNama.length; i++) {
    print(listNama[i]);
  }
  for (String nama in listNama) {
    print(nama);
  }
}
