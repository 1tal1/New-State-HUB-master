import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Player_info extends StatelessWidget {
  final playerstringinfo;
  final playerinfo;
  final snapshot;
  final index;

  const Player_info(
      this.playerstringinfo, this.playerinfo, this.snapshot, this.index);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore db = FirebaseFirestore.instance;

    if (snapshot.data.docs[index].get(playerinfo) != '') {
      return Container(
          margin: const EdgeInsets.only(left: 5),
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              Text(
                playerstringinfo,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ));
    }
    return Container();
  }
}
