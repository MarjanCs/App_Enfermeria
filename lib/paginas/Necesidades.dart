
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enfermeria_app/paginas/NecesidadesInfo.dart';
import 'package:enfermeria_app/paginas/Registro.dart';
import 'package:firebase_core/firebase_core.dart';
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
      appBar: AppBar(
        title: Text("Hola"),
      ),
      body: StreamBuilder(
        stream:
            FirebaseFirestore.instance.collection('Necesidades_14').snapshots(),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NecesidadesInfo(title: document['Title'].toString(),),));
                    },
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text(
                              document['Title'].toString(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 500,
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xff0D0D0D)),
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
