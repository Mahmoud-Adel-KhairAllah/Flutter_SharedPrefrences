import 'package:shared_preferences/shared_preferences.dart';

class SpHelper {
  SpHelper._();
  static final SpHelper spHelper = SpHelper._();
  SharedPreferences sharedPreferences;

  initsharedPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }
}
