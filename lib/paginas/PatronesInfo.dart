import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:enfermeria_app/paginas/Patrones.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class PatronesInfo extends StatefulWidget {
  String title;
  PatronesInfo({required this.title, Key? key}) : super(key: key);

  @override
  State<PatronesInfo> createState() => _PatronesInfoState();
}

class _PatronesInfoState extends State<PatronesInfo> {
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
                            MaterialStateProperty.all(HexColor("#125873")),
                        elevation: MaterialStateProperty.all(0.0)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Patrones()));
                    },
                    child: Text("Patrones")),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Marjan C"),
                      Icon(
                        Icons.person,
                        size: 30,
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('Patrones')
            .doc("${widget.title}")
            .collection("patron_${widget.title}")
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data!.docs.map((document) {
              return Column(
                children: [
                  Text(
                    document['Titulo'].toString(),
                    style: GoogleFonts.inder(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: HexColor("#9E2B2A"),
                    ),
                  ),
                  Text(
                    document['Titulo2'].toString(),
                    style: GoogleFonts.inder(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: HexColor("#9E2B2A")),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: document['Matriz'].length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          subtitle: Text(
                            document['Matriz'][index].toString(),
                            style: GoogleFonts.inder(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: HexColor("#20D0CE")),
                            textAlign: TextAlign.left,
                          ),
                        );
                      },
                    ),
                  ),
                  Text(document['Subtitulo'].toString(),
                      style: GoogleFonts.inder(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: HexColor("#9E2B2A"))),
                  Text(document['Titulo3'].toString(),
                      style: GoogleFonts.inder(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: HexColor("#9E2B2A"))),
                  Text(document['Descripcion'].toString(),
                      style: GoogleFonts.inder(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: HexColor("#20D0CE"))),
                  Text(document['Titulo4'].toString(),
                      style: GoogleFonts.inder(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: HexColor("#9E2B2A"))),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: document['Matriz2'].length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          subtitle: Text(
                            document['Matriz2'][index].toString(),
                            style: GoogleFonts.inder(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: HexColor("#20D0CE")),
                            textAlign: TextAlign.left,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
