import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferncesMethod {
  Future<void> sharedPreferenceSetDataForLogin(
      String cid, String user_id, String password) async {
    final prefs = await SharedPreferences.getInstance();
    final a = await prefs.setString('CID', cid);
    final b = await prefs.setString('USER_ID', user_id);
    final c = await prefs.setString('PASSWORD', password);
  }
}
