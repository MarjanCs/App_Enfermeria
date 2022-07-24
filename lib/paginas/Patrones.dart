import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enfermeria_app/paginas/PatronesInfo.dart';
import 'package:enfermeria_app/paginas/Registro.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Patrones extends StatefulWidget {
  Patrones({Key? key}) : super(key: key);

  @override
  State<Patrones> createState() => _NecesidadesState();
}

class _NecesidadesState extends State<Patrones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#20D0CE"),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Necesidades"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(HexColor("#125873")),
                      elevation: MaterialStateProperty.all(0.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(HexColor("#20D0CE")),
                      elevation: MaterialStateProperty.all(0.0)),
                  onPressed: () {},
                  child: Text("Patrones"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Marjan C"),
                    Icon(Icons.person, size: 30,)
                  ],
                )
              ),
            ],
          )
        ],
      ),
      body: StreamBuilder(
        stream:
            FirebaseFirestore.instance.collection('Patrones').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data!.docs.map((document) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(16),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PatronesInfo(title: document['Title'].toString(),),));
                    },
                    child: Card(
                      color: HexColor("#20D0CE"),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Icon(Icons.abc_sharp))),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  document['Title'].toString(),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 500,
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: HexColor("#EDFFFD")),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ));
            }).toList(),
          );
        },
      ),
    );
  }
}
