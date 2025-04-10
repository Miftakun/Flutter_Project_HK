import 'package:dart_basic/Dart_Advanced/class.dart';

void main(List<String> args) {
  Admin asri = Admin(1, 'Asri', 'Sitorus');
  (asri.sendMessage('Kirim sekaranng juga ya!'));
}

mixin Message {
  void sendMessage(String text) {
    print('Kamu kirim pesan: $text');
  }
}

class Admin extends Person with Message {
  final int access;

  Admin(this.access, String name, String surname)
      : super(
          name,
          surname,
        );
}
