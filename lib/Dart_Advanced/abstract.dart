// Clasess Iheritance - Abstract Classes
abstract class DataReader {
  String readData();

  String fungctionFill() {
    return 'oke nih';
  }
}

class LongReadData implements DataReader {
  @override
  String readData() {
    print('performing logic');
    return 'Yes Oke';
  }

  @override
  String fungctionFill() {
    // TODO: implement fungctionFill
    throw UnimplementedError();
  }
}
