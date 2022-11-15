import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'Info_Teams.dart';

class TeamsPage extends StatelessWidget {
  const TeamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('teams')
                .orderBy('Points', descending: true)
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              int place = 0;
              if (!snapshot.hasData) {
                return const Text('нет записей');
              } else {
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (snapshot.data!.docs[index].get('Type') == 'Teams') {
                        place = place + 1;
                        var placestring = '#' + place.toString();
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => information_page(
                                  index: index,
                                  snapshot: snapshot,
                                ),
                              ),
                            );
                          },
                          child: Container(
                              margin: EdgeInsets.only(top: 5),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 20, 20, 20),
                              ),
                              key: Key(snapshot.data!.docs[index].id),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    margin: const EdgeInsets.only(
                                      bottom: 3,
                                    ),
                                    height: 60,
                                    child: Row(
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(placestring,
                                              style: const TextStyle(
                                                fontSize: 19,
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            children: <Widget>[
                                              Teams_image(
                                                snapshot.data!.docs[index]
                                                    .get('TeamLogo'),
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                    snapshot.data!.docs[index]
                                                        .get('TeamName'),
                                                    style: const TextStyle(
                                                      fontSize: 19,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                      snapshot.data!.docs[index]
                                                          .get('Points')
                                                          .toString(),
                                                      style: const TextStyle(
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      )),
                                                  Text('Очков'),
                                                ]))
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        );
                      } else {
                        return Container();
                      }
                    });
              }
            }));
  }

  bool get wantKeepAlive => true;
}

class Teams_image extends StatelessWidget {
  final playerinfo;

  const Teams_image(this.playerinfo);
  @override
  Widget build(BuildContext context) {
    if (playerinfo == '') {
      return SizedBox(
          height: 60,
          child: Icon(
            Icons.people,
            color: Color.fromARGB(255, 20, 20, 20),
            size: 60,
          ));
    } else {
      return SizedBox(
        width: 60,
        height: 60,
        child: CachedNetworkImage(
          imageUrl: playerinfo,
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      );
    }
  }
}
