import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:enfermeria_app/paginas/Patrones.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class NecesidadesInfo extends StatefulWidget {
  String title;
  NecesidadesInfo({required this.title, Key? key}) : super(key: key);

  @override
  State<NecesidadesInfo> createState() => _NecesidadesInfoState();
}

class _NecesidadesInfoState extends State<NecesidadesInfo> {
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
            .collection('Necesidades_14')
            .doc("${widget.title}")
            .collection("necesidades_${widget.title}")
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
                  Text(document['Titulo'].toString()),
                  Text(document['Subtitulo'].toString()),
                  //Container(
                  //padding: EdgeInsets.all(5.0),
                  //child: ListView.builder(
                  //  scrollDirection: Axis.vertical,
                  // shrinkWrap: true,
                  //itemCount: document['Que valora'].length,
                  // itemBuilder: (context, index) {
                  ///  return ListTile(
                  //  subtitle: Text(
                  //   document['Que valora'][index].toString(),
                  //   style: TextStyle(
                  //       fontWeight: FontWeight.w100, fontSize: 15),
                  //  textAlign: TextAlign.center,
                  //  ),
                  //  );
                  //  },
                  // ),
                  // ),
                ],
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
