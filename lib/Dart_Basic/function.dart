void main(List<String> args) {
  print(cekGenap(7));

  //Anonymous Function
  final anonim = (String nickname) {
    String firstName = 'Miftakun';
    return firstName + nickname;
  };

  print(anonim('Niam'));
}

bool cekGenap(int value) {
  return value % 2 == 0;
}
