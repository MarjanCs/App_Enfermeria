import 'package:enfermeria_app/paginas/Registro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Necesidades extends StatefulWidget {
  Necesidades({Key? key}) : super(key: key);

  @override
  State<Necesidades> createState() => _NecesidadesState();
}

class _NecesidadesState extends State<Necesidades> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EDFFFD"),
      appBar: AppBar(
        backgroundColor: HexColor("#20D0CE"),
        title: Text("Necesidades"),
        actions: <Widget>[],
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(1, 20, 1, 10),
                child: Image(
                  image: AssetImage(
                    'assets/image.png',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(1, 20, 1, 10),
                child: Text("Necesidades Basicas de \n Virginia Henderso",
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: HexColor("#125873"))),
              ),
              Card(
                color: HexColor("#20D0CE"),
                margin: const EdgeInsets.all(10.0),
                elevation: 0.0,
                child: SizedBox(
                  height: 100,
                  //style: GoogleFonts.inter(
                  //fontSize: 15,
                  //fontWeight: FontWeight.bold,
                  //color: HexColor("#20D0CE")),
                  child: InkWell(
                    splashColor: HexColor("#125873"),
                    onTap: () {},
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            '1. Respirar Normalmente',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: HexColor("#20D0CE"),
                margin: const EdgeInsets.all(10.0),
                elevation: 0.0,
                child: SizedBox(
                  height: 100,
                  child: InkWell(
                    splashColor: HexColor("#125873"),
                    onTap: () {},
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            '2. Comer Y Beber Adecuadamente',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: HexColor("#20D0CE"),
                margin: const EdgeInsets.all(10.0),
                elevation: 0.0,
                child: SizedBox(
                  height: 100,
                  child: InkWell(
                    splashColor: HexColor("#125873"),
                    onTap: () {},
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            '3. Eliminar Desechos Corporales',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: HexColor("#20D0CE"),
                margin: const EdgeInsets.all(10.0),
                elevation: 0.0,
                child: SizedBox(
                  height: 100,
                  child: InkWell(
                    splashColor: HexColor("#125873"),
                    onTap: () {},
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            '4. Mover y Mantener Posturas Adecuadas',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: HexColor("#20D0CE"),
                margin: const EdgeInsets.all(10.0),
                elevation: 0.0,
                child: SizedBox(
                  height: 100,
                  child: InkWell(
                    splashColor: HexColor("#125873"),
                    onTap: () {},
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            '5. Dormir Y Descanzar',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: HexColor("#20D0CE"),
                margin: const EdgeInsets.all(10.0),
                elevation: 0.0,
                child: SizedBox(
                  height: 100,
                  child: InkWell(
                    splashColor: HexColor("#125873"),
                    onTap: () {},
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            '6. Escoger Ropa Adecuada,\n Vestirse y Desvestirse',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: HexColor("#20D0CE"),
                margin: const EdgeInsets.all(10.0),
                elevation: 0.0,
                child: SizedBox(
                  height: 100,
                  child: InkWell(
                    splashColor: HexColor("#125873"),
                    onTap: () {},
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            '7. Mantener La Temperatura Corporal',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: HexColor("#20D0CE"),
                margin: const EdgeInsets.all(10.0),
                elevation: 0.0,
                child: SizedBox(
                  height: 100,
                  child: InkWell(
                    splashColor: HexColor("#125873"),
                    onTap: () {},
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            '8. Mantener Higiene Corporal',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: HexColor("#20D0CE"),
                margin: const EdgeInsets.all(10.0),
                elevation: 0.0,
                child: SizedBox(
                  height: 100,
                  child: InkWell(
                    splashColor: HexColor("#125873"),
                    onTap: () {},
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            '9. Evitar los Peligros del Entorno',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: HexColor("#20D0CE"),
                margin: const EdgeInsets.all(10.0),
                elevation: 0.0,
                child: SizedBox(
                  height: 100,
                  child: InkWell(
                    splashColor: HexColor("#125873"),
                    onTap: () {},
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            '10. Comunicarse Con Los Demas',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: HexColor("#20D0CE"),
                margin: const EdgeInsets.all(10.0),
                elevation: 0.0,
                child: SizedBox(
                  height: 100,
                  child: InkWell(
                    splashColor: HexColor("#125873"),
                    onTap: () {},
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            '11. Valores Y Creenecias',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: HexColor("#20D0CE"),
                margin: const EdgeInsets.all(10.0),
                elevation: 0.0,
                child: SizedBox(
                  height: 100,
                  child: InkWell(
                    splashColor: HexColor("#125873"),
                    onTap: () {},
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            '12. Autorealizacion',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: HexColor("#20D0CE"),
                margin: const EdgeInsets.all(10.0),
                elevation: 0.0,
                child: SizedBox(
                  height: 100,
                  child: InkWell(
                    splashColor: HexColor("#125873"),
                    onTap: () {},
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            '13. Ocio y Recreo',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: HexColor("#20D0CE"),
                margin: const EdgeInsets.all(10.0),
                elevation: 0.0,
                child: SizedBox(
                  height: 100,
                  child: InkWell(
                    splashColor: HexColor("#125873"),
                    onTap: () {},
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            '14. Aprender, Descrubrir o Satisfacer La Curiosidad',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
