import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
            backgroundColor: const Color.fromARGB(255, 20, 20, 20),
          ),
          body: Column(children: [
            CachedNetworkImage(
              imageUrl: snapshot.data!.docs[index].get('Banner'),
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 20),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Организатор:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 5),
                    child: Text(
                      snapshot.data!.docs[index].get('Organizer'),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 20),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Время:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 5),
                    child: Text(
                      snapshot.data!.docs[index].get('Time'),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 20),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Призовой фонд:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 5),
                    child: Text(
                      snapshot.data!.docs[index].get('Prize'),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 20),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Режим игры:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 5),
                    child: Text(
                      snapshot.data!.docs[index].get('Mode'),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 20),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Количество команд:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 5),
                    child: Text(
                      snapshot.data!.docs[index].get('Teams'),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 20),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Ссылка:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(left: 5),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: snapshot.data!.docs[index].get('Link'),
                            style: const TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launch(snapshot.data!.docs[index].get('Link'));
                              },
                          ),
                        ]))),
                  ),
                ],
              ),
            ),
            // TextButton(
            //   style: ButtonStyle(
            //     foregroundColor: MaterialStateProperty.all<Color>(
            //         const Color.fromARGB(255, 243, 33, 33)),
            //   ),
            //   onPressed: () {
            //     Navigator.pop(context);
            //     Future.delayed(const Duration(milliseconds: 800), () {
            //       FirebaseFirestore.instance
            //           .collection('Scrims')
            //           .doc(snapshot.data!.docs[index].id)
            //           .delete();
            //     });
            //   },
            //   child: const Icon(Icons.delete),
            // ),
          ]));
    }
  }
}
