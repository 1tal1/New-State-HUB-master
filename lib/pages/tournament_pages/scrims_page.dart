import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'information_scrims.dart';

class ScrimsPage extends StatelessWidget {
  final snapshot;
  const ScrimsPage({Key? key, required this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!snapshot.hasData) {
      return const Text('нет записей');
    } else {
      return ListView.builder(
        itemCount: snapshot.data!.docs.length,
        itemBuilder: (BuildContext context, int index) {
          if (snapshot.data!.docs[index].get('Type') == 'Scrims') {
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
                  key: Key(snapshot.data!.docs[index].id),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(20),
                        height: 100,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: CachedNetworkImage(
                                      imageUrl: snapshot.data!.docs[index]
                                          .get('Logo'),
                                      imageBuilder: (context, imageProvider) =>
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
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Container(
                                            alignment: Alignment.topLeft,
                                            child: Row(
                                              children: [
                                                Container(
                                                  alignment: Alignment.topLeft,
                                                  child: const Text(
                                                      'Организатор:'),
                                                ),
                                                Expanded(
                                                    child: Container(
                                                  alignment: Alignment.topLeft,
                                                  margin: const EdgeInsets.only(
                                                      left: 5),
                                                  child: Text(
                                                    snapshot.data!.docs[index]
                                                        .get('Organizer'),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                )),
                                              ],
                                            ))),
                                    Expanded(
                                        child: Container(
                                            alignment: Alignment.topLeft,
                                            child: Row(
                                              children: [
                                                Container(
                                                  alignment: Alignment.topLeft,
                                                  child: const Text(
                                                      'Дни проведения:'),
                                                ),
                                                Expanded(
                                                    child: Container(
                                                  alignment: Alignment.topLeft,
                                                  margin: const EdgeInsets.only(
                                                      left: 5),
                                                  child: Text(
                                                    snapshot.data!.docs[index]
                                                        .get('Date'),
                                                    softWrap: true,
                                                  ),
                                                )),
                                              ],
                                            ))),
                                    Expanded(
                                        child: Container(
                                            alignment: Alignment.topLeft,
                                            child: Row(
                                              children: [
                                                Container(
                                                  alignment: Alignment.topLeft,
                                                  child: const Text(
                                                      'Количество команд:'),
                                                ),
                                                Expanded(
                                                    child: Container(
                                                  alignment: Alignment.topLeft,
                                                  margin: const EdgeInsets.only(
                                                      left: 5),
                                                  child: Text(
                                                    snapshot.data!.docs[index]
                                                        .get('Teams'),
                                                    softWrap: true,
                                                  ),
                                                )),
                                              ],
                                            ))),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            );
          }
          return Container();
        },
      );
    }
  }
}
