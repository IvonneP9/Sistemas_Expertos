import 'package:flutter/material.dart';
import 'package:login_tarea/pages/rutas.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.network(
              'https://usagif.com/wp-content/uploads/2021/4fh5wi/bienvnds-15.gif')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        Navigator.pushNamed(context, MyRoutes.login.name);
        },
        child: const Icon(
          Icons.arrow_back,
          size: 30,
        ),
      ),
    );
  }
}
