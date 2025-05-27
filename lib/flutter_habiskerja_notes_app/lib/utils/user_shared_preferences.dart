import 'package:shared_preferences/shared_preferences.dart';

class UserSharedPreferences {
  static SharedPreferences? _preferences;

  static const String _name = 'name';
  static const String _pin = 'pin';

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future setUser({required String name, required String pin}) async {
    if (_preferences == null) await init();
    await _preferences?.setString(_name, name);
    await _preferences?.setString(_pin, pin);
  }

  static String? getName() {
    return _preferences?.getString(_name);
  }

  static String? getPin() {
    return _preferences?.getString(_pin);
  }
}
