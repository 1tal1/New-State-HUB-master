import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'classes/information_players.dart';
import 'classes/Teams_image.dart';

class information_page extends StatelessWidget {
  final int index;
  final snapshot;
  const information_page(
      {Key? key, required this.index, required this.snapshot})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!snapshot.hasData) {
      return const Text('нет записей');
    } else {
      return Scaffold(
          appBar: AppBar(
            title: Align(
                child: Container(
                    child: Text(snapshot.data!.docs[index].get('TeamName')),
                    alignment: Alignment.center)),
            elevation: 0,
            backgroundColor: const Color.fromARGB(255, 20, 20, 20),
          ),
          body: Column(
            children: [
              Container(
                  height: 60,
                  margin: const EdgeInsets.only(top: 15, left: 20, bottom: 3),
                  child: Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Teams_image(snapshot.data!.docs[index]
                                      .get('TeamLogo'))),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            margin: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    bottom: 5,
                                  ),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    snapshot.data!.docs[index].get('TeamName'),
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    children: [
                                      const Text('Регион:'),
                                      Container(
                                        margin: const EdgeInsets.only(
                                          left: 2,
                                        ),
                                        child: const Text('CIS'),
                                      ),
                                      Container(
                                          margin: const EdgeInsets.only(
                                            left: 2,
                                          ),
                                          height: 15,
                                          width: 15,
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                'https://www.belvpo.com/wp-content/uploads/2015/10/Flag_of_the_CIS.svg_.png',
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            placeholder: (context, url) =>
                                                const CircularProgressIndicator(),
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              information_players(
                  index: index, snapshot: snapshot, player: 'Player1'),
              information_players(
                  index: index, snapshot: snapshot, player: 'Player2'),
              information_players(
                  index: index, snapshot: snapshot, player: 'Player3'),
              information_players(
                  index: index, snapshot: snapshot, player: 'Player4'),
              information_players(
                  index: index, snapshot: snapshot, player: 'Player5'),
              information_players(
                  index: index, snapshot: snapshot, player: 'Player6'),
            ],
          ));
    }
  }
}
