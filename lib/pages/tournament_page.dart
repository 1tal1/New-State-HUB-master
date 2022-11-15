import 'package:flutter/material.dart';
import 'tournament_pages/tournament_list_page.dart';
import 'tournament_pages/scrims_page.dart';

class TournamentPage extends StatelessWidget {
  final snapshot;
  const TournamentPage({Key? key, required this.snapshot}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 20, 20, 20),
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              TabBar(
                tabs: [
                  Tab(
                    text: 'Открыта',
                  ),
                  Tab(
                    text: 'Закрыта',
                  ),
                  Tab(
                    text: 'Праки',
                  ),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Tournament_list_Page(snapshot: snapshot, status: 'Открыта'),
            Tournament_list_Page(snapshot: snapshot, status: 'Закрыта'),
            ScrimsPage(snapshot: snapshot),
          ],
        ),
      ),
    );
  }
}
