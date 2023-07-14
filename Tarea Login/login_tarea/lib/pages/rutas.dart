

import 'package:login_tarea/pages/login.dart';
import 'package:login_tarea/pages/welcome.dart';

enum MyRoutes { login, bienvenida }

final routes = {
  MyRoutes.login.name: (context) => LoginPage(), 
  MyRoutes.bienvenida.name: (context) => const WelcomePage(),
 

};