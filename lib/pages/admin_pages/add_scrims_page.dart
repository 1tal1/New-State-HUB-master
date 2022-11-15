import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class addScrims extends StatelessWidget {
  addScrims({Key? key}) : super(key: key);

  void initFireBase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  TextEditingController NameOrganizer = TextEditingController();
  TextEditingController Date = TextEditingController();
  TextEditingController LinkLogo = TextEditingController();
  TextEditingController Time = TextEditingController();
  TextEditingController Prize = TextEditingController();
  TextEditingController Mode = TextEditingController();
  TextEditingController Teams = TextEditingController();
  TextEditingController LinkTournament = TextEditingController();
  TextEditingController LinkBanner = TextEditingController();
  @override
  Widget build(BuildContext context) {
    false;
    return Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              autofocus: true,
              controller: NameOrganizer,
              decoration: const InputDecoration(
                labelText: "Название организации",
                hintText: "Введите название организации",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Date,
              decoration: const InputDecoration(
                labelText: "Дни проведения",
                hintText: "Пример: пн-пт",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Time,
              decoration: const InputDecoration(
                labelText: "Время проведения",
                hintText: "Пример: Ежедневно (15:00) - Вт/Вс (17:00)",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Prize,
              decoration: const InputDecoration(
                labelText: "Призовой фонд",
                hintText: "Введите призовой фонд",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Mode,
              decoration: const InputDecoration(
                labelText: "Режим игры",
                hintText: "Пример: FPP, squad",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Teams,
              decoration: const InputDecoration(
                labelText: "Количество команд",
                hintText: "Введите количество команд",
              ),
            ),
            TextField(
              autofocus: true,
              controller: LinkLogo,
              decoration: const InputDecoration(
                labelText: "Логотип организации",
                hintText: "Введите ссылку на лого",
              ),
            ),
            TextField(
              autofocus: true,
              controller: LinkBanner,
              decoration: const InputDecoration(
                labelText: "Баннер праков",
                hintText: "Введите ссылку на баннер",
              ),
            ),
            TextField(
              autofocus: true,
              controller: LinkTournament,
              decoration: const InputDecoration(
                labelText: "Ссылка на праки",
                hintText: "Введите ссылку на праки",
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
        var collection = FirebaseFirestore.instance.collection('posts');
        collection.doc(NameOrganizer.text) // <-- Document ID
            .set(
          {
            'Logo': LinkLogo.text,
            'Type': 'Scrims',
            'Organizer': NameOrganizer.text,
            'Date': Date.text,
            'Time': Time.text,
            'Prize': Prize.text,
            'Mode': Mode.text,
            'Teams': Teams.text,
            'Link': LinkTournament.text,
            'Banner': LinkBanner.text,
          },
        );
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Подтвердите действие"),
      content: const Text("Вы действительно хотите добавить праки?"),
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
