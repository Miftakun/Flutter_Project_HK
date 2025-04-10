// Error Handling Exception
void main(List<String> args) {
  try {
    final myInt = int.parse("abc"); // This will throw an exception
  } on FormatException {
    print('gagal format');
  }
}
