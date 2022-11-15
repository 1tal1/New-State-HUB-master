import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Player_youtube extends StatelessWidget {
  final playerinfo;
  final snapshot;
  final index;
  const Player_youtube(this.playerinfo, this.snapshot, this.index);
  @override
  Widget build(BuildContext context) {
    if (snapshot.data!.docs[index].get(playerinfo) != '') {
      return Container(
        height: 60,
        margin: EdgeInsets.only(right: 5),
        alignment: Alignment.bottomRight,
        child: CachedNetworkImage(
          height: 30,
          imageUrl:
              'https://cdn.icon-icons.com/icons2/1211/PNG/512/1491580651-yumminkysocialmedia28_83061.png',
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      );
    } else {
      return Container();
    }
  }
}
