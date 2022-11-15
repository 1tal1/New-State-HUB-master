import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class addTeams extends StatelessWidget {
  addTeams({Key? key}) : super(key: key);

  void initFireBase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  TextEditingController TeamName = TextEditingController();
  TextEditingController LinkLogo = TextEditingController();
  TextEditingController Player1 = TextEditingController();
  TextEditingController Player1Name = TextEditingController();
  TextEditingController Player1Age = TextEditingController();
  TextEditingController Player1Device = TextEditingController();
  TextEditingController Player1Flag = TextEditingController();
  TextEditingController Player1Image = TextEditingController();
  TextEditingController Player1YouTube = TextEditingController();
  TextEditingController Player2 = TextEditingController();
  TextEditingController Player2Name = TextEditingController();
  TextEditingController Player2Age = TextEditingController();
  TextEditingController Player2Device = TextEditingController();
  TextEditingController Player2Flag = TextEditingController();
  TextEditingController Player2Image = TextEditingController();
  TextEditingController Player2YouTube = TextEditingController();
  TextEditingController Player3 = TextEditingController();
  TextEditingController Player3Name = TextEditingController();
  TextEditingController Player3Age = TextEditingController();
  TextEditingController Player3Device = TextEditingController();
  TextEditingController Player3Flag = TextEditingController();
  TextEditingController Player3Image = TextEditingController();
  TextEditingController Player3YouTube = TextEditingController();
  TextEditingController Player4 = TextEditingController();
  TextEditingController Player4Name = TextEditingController();
  TextEditingController Player4Age = TextEditingController();
  TextEditingController Player4Device = TextEditingController();
  TextEditingController Player4Flag = TextEditingController();
  TextEditingController Player4Image = TextEditingController();
  TextEditingController Player4YouTube = TextEditingController();
  TextEditingController Player5 = TextEditingController();
  TextEditingController Player5Name = TextEditingController();
  TextEditingController Player5Age = TextEditingController();
  TextEditingController Player5Device = TextEditingController();
  TextEditingController Player5Flag = TextEditingController();
  TextEditingController Player5Image = TextEditingController();
  TextEditingController Player5YouTube = TextEditingController();
  TextEditingController Player6 = TextEditingController();
  TextEditingController Player6Name = TextEditingController();
  TextEditingController Player6Age = TextEditingController();
  TextEditingController Player6Device = TextEditingController();
  TextEditingController Player6Flag = TextEditingController();
  TextEditingController Player6Image = TextEditingController();
  TextEditingController Player6YouTube = TextEditingController();
  @override
  Widget build(BuildContext context) {
    false;
    return Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              autofocus: true,
              controller: TeamName,
              decoration: const InputDecoration(
                labelText: "Название Команды",
                hintText: "Введите название команды",
              ),
            ),
            TextField(
              autofocus: true,
              controller: LinkLogo,
              decoration: const InputDecoration(
                labelText: "Логотип команды",
                hintText: "Введите ссылку на лого",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player1,
              decoration: const InputDecoration(
                labelText: "Первый игрок",
                hintText: "Введите ник первого игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player1Name,
              decoration: const InputDecoration(
                labelText: "Имя первого игрока",
                hintText: "Введите имя первого игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player1Age,
              decoration: const InputDecoration(
                labelText: "Возраст первого игрока",
                hintText: "Введите возраст первого игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player1Device,
              decoration: const InputDecoration(
                labelText: "Девайс первого игрока",
                hintText: "Введите девайс первого игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player1Flag,
              decoration: const InputDecoration(
                labelText: "Флаг первого игрока",
                hintText: "Введите ник первого игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player1Image,
              decoration: const InputDecoration(
                labelText: "Фотография первого игрока",
                hintText: "Фотография первого игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player1YouTube,
              decoration: const InputDecoration(
                labelText: "YouTube первого игрока",
                hintText: "Введите YouTube первого игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player2,
              decoration: const InputDecoration(
                labelText: "Второй игрок",
                hintText: "Введите ник второго игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player2Name,
              decoration: const InputDecoration(
                labelText: "Имя второго игрока",
                hintText: "Введите имя второго игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player2Age,
              decoration: const InputDecoration(
                labelText: "Возраст второго игрока",
                hintText: "Введите возраст второго игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player2Device,
              decoration: const InputDecoration(
                labelText: "Девайс второго игрока",
                hintText: "Введите девайс второго игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player2Flag,
              decoration: const InputDecoration(
                labelText: "Флаг второго игрока",
                hintText: "Введите ник второго игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player2Image,
              decoration: const InputDecoration(
                labelText: "Фотография второго игрока",
                hintText: "Фотография второго игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player2YouTube,
              decoration: const InputDecoration(
                labelText: "YouTube второго игрока",
                hintText: "Введите YouTube второго игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player3,
              decoration: const InputDecoration(
                labelText: "Третий игрок",
                hintText: "Введите ник третьего игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player3Name,
              decoration: const InputDecoration(
                labelText: "Имя третьего игрока",
                hintText: "Введите имя третьего игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player3Age,
              decoration: const InputDecoration(
                labelText: "Возраст третьего игрока",
                hintText: "Введите возраст третьего игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player3Device,
              decoration: const InputDecoration(
                labelText: "Девайс третьего игрока",
                hintText: "Введите девайс третьего игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player3Flag,
              decoration: const InputDecoration(
                labelText: "Флаг третьего игрока",
                hintText: "Введите ник третьего игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player3Image,
              decoration: const InputDecoration(
                labelText: "Фотография третьего игрока",
                hintText: "Фотография третьего игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player3YouTube,
              decoration: const InputDecoration(
                labelText: "YouTube третьего игрока",
                hintText: "Введите YouTube третьего игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player4,
              decoration: const InputDecoration(
                labelText: "Четвёртый  игрок",
                hintText: "Введите ник четвёртого  игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player4Name,
              decoration: const InputDecoration(
                labelText: "Имя четвёртого  игрока",
                hintText: "Введите имя четвёртого  игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player4Age,
              decoration: const InputDecoration(
                labelText: "Возраст четвёртого  игрока",
                hintText: "Введите возраст четвёртого  игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player4Device,
              decoration: const InputDecoration(
                labelText: "Девайс четвёртого  игрока",
                hintText: "Введите девайс четвёртого  игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player4Flag,
              decoration: const InputDecoration(
                labelText: "Флаг четвёртого игрока",
                hintText: "Введите ник четвёртого  игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player4Image,
              decoration: const InputDecoration(
                labelText: "Фотография четвётого игрока",
                hintText: "Фотография четвётого  игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player4YouTube,
              decoration: const InputDecoration(
                labelText: "YouTube четвётого  игрока",
                hintText: "Введите YouTube четвётого  игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player5,
              decoration: const InputDecoration(
                labelText: "Пятый игрок",
                hintText: "Введите ник пятого игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player5Name,
              decoration: const InputDecoration(
                labelText: "Имя пятого игрока",
                hintText: "Введите имя пятого игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player5Age,
              decoration: const InputDecoration(
                labelText: "Возраст пятого игрока",
                hintText: "Введите возраст пятого игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player5Device,
              decoration: const InputDecoration(
                labelText: "Девайс пятого игрока",
                hintText: "Введите девайс пятого игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player5Flag,
              decoration: const InputDecoration(
                labelText: "Флаг пятого игрока",
                hintText: "Введите ник пятого  игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player5Image,
              decoration: const InputDecoration(
                labelText: "Фотография пятого игрока",
                hintText: "Фотография пятого  игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player5YouTube,
              decoration: const InputDecoration(
                labelText: "YouTube пятого  игрока",
                hintText: "Введите YouTube пятого  игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player6,
              decoration: const InputDecoration(
                labelText: "Шестой игрок",
                hintText: "Введите ник шестого игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player6Name,
              decoration: const InputDecoration(
                labelText: "Имя шестого игрока",
                hintText: "Введите имя шестого игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player6Age,
              decoration: const InputDecoration(
                labelText: "Возраст шестого игрока",
                hintText: "Введите возраст шестого игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player6Device,
              decoration: const InputDecoration(
                labelText: "Девайс шестого игрока",
                hintText: "Введите девайс шестого игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player6Flag,
              decoration: const InputDecoration(
                labelText: "Флаг шестого игрока",
                hintText: "Введите ник шестого  игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player6Image,
              decoration: const InputDecoration(
                labelText: "Фотография шестого игрока",
                hintText: "Фотография шестого  игрока",
              ),
            ),
            TextField(
              autofocus: true,
              controller: Player6YouTube,
              decoration: const InputDecoration(
                labelText: "YouTube шестого  игрока",
                hintText: "Введите YouTube шестого игрока",
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
              child: Icon(Icons.delete),
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
        var collection = FirebaseFirestore.instance.collection('teams');
        collection.doc(TeamName.text) // <-- Document ID
            .set({
          'Type': 'Teams',
          'TeamLogo': LinkLogo.text,
          'TeamName': TeamName.text,
          'Player1': Player1.text,
          'Player1age': Player1Age.text,
          'Player1name': Player1Name.text,
          'Player1device': Player1Device.text,
          'Player1flag': Player1Flag.text,
          'Player1image': Player1Image.text,
          'Player1YouTube': Player1YouTube.text,
          'Player2': Player2.text,
          'Player2age': Player2Age.text,
          'Player2name': Player2Name.text,
          'Player2device': Player2Device.text,
          'Player2flag': Player2Flag.text,
          'Player2image': Player2Image.text,
          'Player2YouTube': Player2YouTube.text,
          'Player3': Player3.text,
          'Player3age': Player3Age.text,
          'Player3name': Player3Name.text,
          'Player3device': Player3Device.text,
          'Player3flag': Player3Flag.text,
          'Player3image': Player3Image.text,
          'Player3YouTube': Player3YouTube.text,
          'Player4': Player4.text,
          'Player4age': Player4Age.text,
          'Player4name': Player4Name.text,
          'Player4device': Player4Device.text,
          'Player4flag': Player4Flag.text,
          'Player4image': Player4Image.text,
          'Player4YouTube': Player4YouTube.text,
          'Player5': Player5.text,
          'Player5age': Player5Age.text,
          'Player5name': Player5Name.text,
          'Player5device': Player5Device.text,
          'Player5flag': Player5Flag.text,
          'Player5image': Player5Image.text,
          'Player5YouTube': Player5YouTube.text,
          'Player6': Player6.text,
          'Player6age': Player6Age.text,
          'Player6name': Player6Name.text,
          'Player6device': Player6Device.text,
          'Player6flag': Player6Flag.text,
          'Player6image': Player6Image.text,
          'Player6YouTube': Player6YouTube.text,
          'Points': 0,
        });
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Подтвердите действие"),
      content: const Text("Вы действительно хотите добавить команду?"),
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
