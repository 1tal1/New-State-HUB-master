import 'package:flutter/material.dart';
import 'package:untitled/pages/admin_pages/add_scrims_page.dart';
import 'admin_pages/add_tournament_page.dart';
import 'admin_pages/add_teams_page.dart';
import 'admin_pages/add_video_page.dart';
import 'admin_pages/add_scrims_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 20, 20, 20),
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              TabBar(
                tabs: [
                  Tab(
                    text: 'Турниры',
                  ),
                  Tab(
                    text: 'Праки',
                  ),
                  Tab(
                    text: 'Команды',
                  ),
                  Tab(
                    text: 'Видео',
                  ),
                ],
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            addTournament(),
            addScrims(),
            addTeams(),
            addVideo(),
          ],
        ),
      ),
    );
  }
}
