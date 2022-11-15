import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Teams_image extends StatelessWidget {
  final playerinfo;

  const Teams_image(this.playerinfo);
  @override
  Widget build(BuildContext context) {
    if (playerinfo == '') {
      return const Icon(
        Icons.people,
        color: Color.fromARGB(255, 20, 20, 20),
        size: 60,
      );
    } else {
      return CachedNetworkImage(
        imageUrl: playerinfo,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      );
    }
  }
}
