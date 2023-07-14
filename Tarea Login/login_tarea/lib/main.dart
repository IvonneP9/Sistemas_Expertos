import 'package:flutter/material.dart';
import 'package:login_tarea/pages/login.dart';
import 'package:login_tarea/pages/rutas.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(useMaterial3: true),
      home:  LoginPage(),
      initialRoute: MyRoutes.login.name,
      routes: routes,
    );
  }
}
