import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class addTournament extends StatelessWidget {
  addTournament({Key? key}) : super(key: key);

  void initFireBase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  TextEditingController NameOrganizer = TextEditingController();
  TextEditingController NameTournament = TextEditingController();
  TextEditingController LinkLogo = TextEditingController();
  TextEditingController Region = TextEditingController();
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
              controller: NameTournament,
              decoration: const InputDecoration(
                labelText: "Название турнира",
                hintText: "Введите название турнира",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Region,
              decoration: const InputDecoration(
                labelText: "Название регион",
                hintText: "Пример: CIS/Europe",
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
                labelText: "Баннер турнира",
                hintText: "Введите ссылку на баннер",
              ),
            ),
            TextField(
              autofocus: true,
              controller: LinkTournament,
              decoration: const InputDecoration(
                labelText: "Ссылка на турнир",
                hintText: "Введите ссылку на турнир",
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
        collection.doc(NameTournament.text) // <-- Document ID
            .set({
          'Logo': LinkLogo.text,
          'Type': 'Tournaments',
          'Organizer': NameOrganizer.text,
          'Region': Region.text,
          'Name': NameTournament.text,
          'Prize': Prize.text,
          'Mode': Mode.text,
          'Teams': Teams.text,
          'Status': 'Открыта',
          'Link': LinkTournament.text,
          'Banner': LinkBanner.text,
        });
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Подтвердите действие"),
      content: const Text("Вы действительно хотите добавить турнир?"),
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
