import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import 'Player_image.dart';
import 'Player_info.dart';
import 'Player_youtube.dart';

class information_players extends StatelessWidget {
  final int index;
  final snapshot;
  final player;
  const information_players(
      {Key? key,
      required this.index,
      required this.snapshot,
      required this.player})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var playerage = player + 'age';
    var playerdevice = player + 'device';
    var playerflag = player + 'flag';
    var playername = player + 'name';
    var playerYouTube = player + 'YouTube';
    var playerimage = player + 'image';
    if (snapshot.data!.docs[index].get(player) != "") {
      var playeragestring = "Age: " + snapshot.data!.docs[index].get(playerage);
      var playerdevicestring =
          'Device: ' + snapshot.data!.docs[index].get(playerdevice);
      return Column(
        children: [
          const Divider(
            color: Color.fromARGB(255, 46, 45, 45),
            thickness: 2,
            indent: 2,
          ),
          Row(
            children: [
              Player_image(playerimage, snapshot, index),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Flag.fromString(
                              snapshot.data!.docs[index].get(playerflag),
                              height: 18,
                              width: 18,
                              fit: BoxFit.fill,
                              flagSize: FlagSize.size_1x1,
                              borderRadius: 25,
                            ),
                            Text(
                              snapshot.data!.docs[index].get(player),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Player_info(
                          playerdevicestring, playerdevice, snapshot, index),
                      Player_info(playeragestring, playerage, snapshot, index),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Player_youtube(playerYouTube, snapshot, index))
            ],
          ),
        ],
      );
    }
    return Container();
  }
}
