import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'pages/tournament_page.dart';
import 'pages/setting_page.dart';
import 'pages/video_page.dart';
import 'pages/teams_pages/Teams_page.dart';

class WithTabBar extends StatefulWidget {
  const WithTabBar({Key? key}) : super(key: key);

  @override
  _WithTabBarState createState() => _WithTabBarState();
}

class _WithTabBarState extends State<WithTabBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 5000), () {});
    return Scaffold(
      appBar: AppBar(
        title: const Align(
            child: Text("New State HUB"), alignment: Alignment.center),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('posts').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            return IndexedStack(
              children: [
                TournamentPage(snapshot: snapshot),
                VideoPage(snapshot: snapshot),
                TeamsPage(),
                SettingPage(),
              ],
              index: _selectedIndex,
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        selectedItemColor: const Color.fromARGB(255, 0, 150, 136),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Турниры',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video),
            label: 'Контент',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Команды',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Настройки',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
