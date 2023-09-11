import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:team_builder_football/Models/player.dart';
import 'package:team_builder_football/Models/team.dart';
import 'package:team_builder_football/const.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(onPressed: initTest(), icon: const Icon(Icons.access_alarms))
        ),
    );
  }
}

initTest() {
  debugPrint("onPressed test");
  userTeam.init(10, "User Team", 100);
  debugPrint(userTeam.toString());
}