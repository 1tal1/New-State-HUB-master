import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class VideoPage extends StatelessWidget {
  final snapshot;
  const VideoPage({Key? key, required this.snapshot}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 20, 20, 20),
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              TabBar(
                tabs: [
                  Tab(
                    text: 'Информационные',
                  ),
                  Tab(
                    text: 'Хайлайты',
                  ),
                ],
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            InfoVideoPage(snapshot: snapshot, status: 'InfoVideo'),
            InfoVideoPage(snapshot: snapshot, status: 'Highlights'),
          ],
        ),
      ),
    );
  }
}

class InfoVideoPage extends StatelessWidget {
  final snapshot;
  final status;
  const InfoVideoPage({Key? key, required this.snapshot, required this.status})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (!snapshot.hasData) {
      return const Text('нет записей');
    } else {
      return ListView.builder(
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (BuildContext context, int index) {
            if (snapshot.data!.docs[index].get('Type') == 'Video') {
              if (snapshot.data!.docs[index].get('Status') == status) {
                return GestureDetector(
                  onTap: () {
                    launch(snapshot.data!.docs[index].get('Link'));
                  },
                  child: Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      key: Key(snapshot.data!.docs[index].id),
                      child: Column(
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                                snapshot.data!.docs[index].get('LinkImage'),
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              snapshot.data!.docs[index].get('Text'),
                              style: const TextStyle(
                                fontSize: 19,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )),
                );
              }
              return Container();
            }
            return Container();
          });
    }
  }
}
