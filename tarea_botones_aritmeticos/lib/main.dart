
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarea 1.2',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 17, 32, 240)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Operaciones Basicas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   double counter = 10;
   final int cont =2;

    //Operaciones 
  void incrementCounter() {
    setState(() {
      counter = counter + cont;
    });
  }

  void restarCounter() {
    setState(() {
      counter = counter - cont;
    });
    
  }

  void multiplicarCounter() {
    setState(() {
        counter = counter * cont;
    });
    
  }

  void dividirCounter() {
    setState(() {
      counter = (counter / cont) ;
    });
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Presione el boton con el operador preferido: ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,  
                ),
            ),
            Text(
              '$counter',
              textAlign: TextAlign.center,
              style: const TextStyle( 
                  fontSize: 35,
                   color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
            ),
          ],
        ),
      ),
     
      floatingActionButton: Row
        (
          mainAxisAlignment: MainAxisAlignment.center,
         
          children: [
            const SizedBox(width: 30),
            FloatingActionButton(
              backgroundColor: Colors.deepPurple,
              
              onPressed: incrementCounter,
              child: const Icon(Icons.add),
            ),
            
            const SizedBox(width: 30),
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: restarCounter, 
              child: const Icon(Icons.remove),
            ),

            const SizedBox(width: 30),
            FloatingActionButton(
              backgroundColor: Colors.teal,
              onPressed: multiplicarCounter, 
              child: const Text('X',
              style: TextStyle( 
              fontWeight: FontWeight.bold,
                ),),
              
            ),

            const SizedBox(width: 30),
              FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 57, 35, 185),
              onPressed: dividirCounter, 
              child: const Text('/',
              style: TextStyle( 
                fontSize: 20,
              fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),  
    );
  }
}
