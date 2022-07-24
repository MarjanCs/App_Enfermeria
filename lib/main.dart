import 'package:enfermeria_app/paginas/Necesidades.dart';
import 'package:enfermeria_app/paginas/Registro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'paginas/Login.dart';
import 'paginas/inicio.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(MyWidget());
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDnqou_LZYNUrH3PEmdELofoRGlYAqCqg4",
          authDomain: "appenfermeria-d612d.firebaseapp.com",
          projectId: "appenfermeria-d612d",
          storageBucket: "appenfermeria-d612d.appspot.com",
          messagingSenderId: "660550132391",
          appId: "1:660550132391:web:b538599e89f1bf79def182"));
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Inicio(),
    );
  }
}
