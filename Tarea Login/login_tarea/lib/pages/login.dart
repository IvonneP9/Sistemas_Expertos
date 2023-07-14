
import 'package:flutter/material.dart';
import 'package:login_tarea/pages/rutas.dart';

//ivonne.perez@unah.hn
//20142002544

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final correoControl = TextEditingController();
  final cuentaControl = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Institucional'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.network(
                  'https://irreverenciaemergente.files.wordpress.com/2014/08/logo-puma.png',
                  height: 150,
                  fit: BoxFit.fitHeight),

              TextField(
                decoration: const InputDecoration(
                  label: Text('Ingrese su correo institucional'),
                ),
                controller: correoControl,
                keyboardType: TextInputType.name,
                obscureText: false,
                style: const TextStyle(color: Colors.black, fontSize: 20),
                maxLength: 20,
              ),

              TextField(
                decoration: const InputDecoration(
                    label: Text('Ingrese su contraseña'),
                    fillColor: Colors.black87),
                controller: cuentaControl,
                keyboardType: TextInputType.number,
                obscureText: true,
                style: const TextStyle(color: Colors.black, fontSize: 15),
                maxLength: 11,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
         
          if (cuentaControl.text == '20142002544' &&
              correoControl.text == 'ivonne.perez@unah.hn') {
            print('datos correcta');
            Navigator.pushNamed(context, MyRoutes.bienvenida.name);
          } else {

            SnackBar snackBar = SnackBar(
              content: const Text("Datos Incorrectos"),
              action: SnackBarAction(
                label: "Ok",
                onPressed: () {},
              ),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        child: const Icon(
          Icons.check_circle,
          size: 30,
        ),
      ),
    );
  }

  
}
