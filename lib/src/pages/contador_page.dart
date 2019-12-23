import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle( fontSize: 30 );
  int _conteo = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
        elevation: 0.9,
      ),
      body: Center(
        // child: Text('Hola Mundo !'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Presiona el boton +', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto)
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones()
      // floatingActionButton: FloatingActionButton(
      //   child: Icon( Icons.add ),
      //   onPressed: () { 
      //     // print('Hola Mundo');
      //     // redibuja la pantalla cuando se actualiza alguna variable
      //     setState(() {
      //       _conteo++;
      //     });
      //   }
      // ),
    );
  }

  Widget _crearBotones() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox( width: 5.0 ),
          FloatingActionButton(
            child: Icon( Icons.exposure_zero ),
            onPressed: _reset // no se llama al metodo se asigna la referencia
          ),
          Expanded(child: SizedBox()),
          FloatingActionButton(
            child: Icon( Icons.remove ),
            onPressed: _sustraer
          ),
          SizedBox( width: 5.0 ),
          FloatingActionButton(
            child: Icon( Icons.add ),
            onPressed: _agregar
          ),
          SizedBox( width: 5.0 ),
        ],
      );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() {
      if (_conteo > 0) {
        _conteo--;
      }
    });
  }

  void _reset() {
    setState(() => _conteo = 0);
  }

}