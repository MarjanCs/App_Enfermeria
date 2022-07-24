import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Patrones').doc("${widget.title}").collection("patron_${widget.title}").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data!.docs.map((document) {
              return Container(
                child: Text(
                  document['valor'].toString()
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}