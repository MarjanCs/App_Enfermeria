import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Necesidades_14').doc("${widget.title}").collection("necesidades_${widget.title}").snapshots(),
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
                  Text(document['Objetivo'].toString()),
                  Text(document['Definición'].toString()),
                  Container(
            padding: EdgeInsets.all(5.0),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: document['Cuidados'].length,
              itemBuilder: (context, index) {
                return ListTile(
                  subtitle: Text(
                    document['Cuidados'][index].toString(),
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 15),
                    textAlign: TextAlign.center,
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