import 'package:enfermeria_app/paginas/Registro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Necesidades.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordSecret = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EDFFFD"),
      body: ListView(
        children: [
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('assets/logeo.png'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Image(
                          image: AssetImage('assets/logo.png'),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Nursing Help",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#20D0CE")),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(25, 20, 1, 10),
                      child: Text("Email",
                          style: GoogleFonts.inter(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#20D0CE"))),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(25, 5, 20, 10),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                        labelText: "Ingrese su E-mail",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: emailController,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(25, 20, 1, 10),
                      child: Text("Contraseña",
                          style: GoogleFonts.inter(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#20D0CE"))),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(25, 5, 20, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            !passwordSecret
                                ? Icons.visibility_off
                                : Icons.visibility,
                            size: 17,
                          ),
                          onPressed: () {
                            setState(() {
                              passwordSecret = !passwordSecret;
                            });
                          },
                        ),
                        labelText: "Ingrese su Contraseña",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      autocorrect: false,
                      obscureText: passwordSecret,
                      enableSuggestions: false,
                      controller: passwordController,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: ElevatedButton(
                        child: Text("Ingresar"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 5,
                            shadowColor: Colors.black),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Necesidades()));
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)))),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Registrarse",
                            style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: HexColor("#FFFFFF")),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Registro()));
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
