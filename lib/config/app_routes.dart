import 'package:newapp_functions/pages/edit_profile.dart';
import 'package:newapp_functions/pages/home_page.dart';
import 'package:newapp_functions/pages/login_page.dart';
import 'package:newapp_functions/pages/main_page.dart';
import 'package:newapp_functions/pages/nearby_page.dart';
import 'package:newapp_functions/pages/start_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => const LoginPage(),
    home: (context) => HomePage(),
    main: (context) => const MainPage(),
    editProfile: (context) => const EditProfile(),
    nearbyPage: (context) => const NearbyPage(),
    startPage: (context) => const Start_Page(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearbyPage = '/nearby';
  static const startPage = '/start';
}
