import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../util/const.dart';

class AppProvider extends ChangeNotifier {
  AppProvider() {
    checkTheme();
  }

  var theme = LightColorSet();
  Key key = UniqueKey();
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void setKey(value) {
    key = value;
    notifyListeners();
  }

  void setNavigatorKey(value) {
    navigatorKey = value;
    notifyListeners();
  }

  void setTheme(value, c) {
    theme = value;
    SharedPreferences.getInstance().then((prefs) {
      prefs.setString("theme", c).then((val) {

      });
    });
    notifyListeners();
  }

  getTheme(value) {
    return theme;
  }

  Future checkTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var t;
    String? r = prefs.getString("theme") ?? "light";

    if (r == "light") {
      t = LightColorSet();
      setTheme(LightColorSet(), "light");
    } else {
      t = DarkColorSet();
      setTheme(DarkColorSet(), "dark");
    }

    return t;
  }
}
