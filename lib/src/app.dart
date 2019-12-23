import 'package:contador/src/pages/contador_page.dart';
// import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remueve etiqueta de debug en pantalla
      home: Center(
        // child: Text('Hola Mundo!'),
        // child: HomePage(),
        child: ContadorPage(),
      )
      // home: Text('Hola Mundo'),
    );
  }
  
}