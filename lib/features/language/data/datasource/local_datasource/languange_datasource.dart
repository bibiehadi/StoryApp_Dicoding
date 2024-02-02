import 'package:shared_preferences/shared_preferences.dart';
import 'package:story_app/features/language/data/models/language_model.dart';

class LanguangeDatasource {
  Future<bool> setLanguange(Language selectedLanguage) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final res = await pref.setString('lang', selectedLanguage.text);
    return res;
  }

  Future<String> getLanguange() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final res = pref.getString('lang') ?? '';
    return res;
  }
}
