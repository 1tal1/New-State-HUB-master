import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Player_image extends StatelessWidget {
  final playerinfo;
  final snapshot;
  final index;
  const Player_image(this.playerinfo, this.snapshot, this.index);
  @override
  Widget build(BuildContext context) {
    if (snapshot.data!.docs[index].get(playerinfo) == '') {
      return const Expanded(
          flex: 1,
          child: Icon(
            Icons.person,
            color: Color.fromARGB(255, 20, 20, 20),
            size: 70,
          ));
    } else {
      return Expanded(
        flex: 1,
        child: CachedNetworkImage(
          height: 70,
          imageUrl: snapshot.data!.docs[index].get(playerinfo),
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      );
    }
  }
}
