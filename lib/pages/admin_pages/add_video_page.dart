import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class addVideo extends StatelessWidget {
  addVideo({Key? key}) : super(key: key);

  void initFireBase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  TextEditingController TextVideo = TextEditingController();
  TextEditingController LinkImageVideo = TextEditingController();
  TextEditingController LinkVideo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    false;
    return Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              autofocus: true,
              controller: TextVideo,
              decoration: const InputDecoration(
                labelText: "Текст к видео",
                hintText: "Введите текст к видео",
              ),
            ),
            TextField(
              autofocus: true,
              controller: LinkImageVideo,
              decoration: const InputDecoration(
                labelText: "Превью видео",
                hintText: "Введите ссылку на превью",
              ),
            ),
            TextField(
              autofocus: true,
              controller: LinkVideo,
              decoration: const InputDecoration(
                labelText: "Ссылка на видео",
                hintText: "Введите ссылку на видео",
              ),
            ),
            TextButton(
              autofocus: true,
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 243, 33, 33)),
              ),
              onPressed: () {
                showAlertDialog(context);
              },
              child: const Icon(Icons.delete),
            ),
          ],
        ));
  }

  showAlertDialog(BuildContext context) {
    Widget okButton = TextButton(
      child: const Text("Отмена"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget cancellButton = TextButton(
      child: const Text("Да"),
      onPressed: () {
        FirebaseFirestore.instance.collection('posts').add(
          {
            'Type': 'Video',
            'Text': TextVideo.text,
            'Link': LinkVideo.text,
            'LinkImage': LinkImageVideo.text,
            'Status': 'InfoVideo',
          },
        );
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Подтвердите действие"),
      content: const Text("Вы действительно хотите добавить видео?"),
      actions: [
        okButton,
        cancellButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
