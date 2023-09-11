import 'package:team_builder_football/Models/player.dart';

class Team {
  var players = [];
  var name = "";

  void init(int nbPlayers, String newName, int maximumValuePlayer) {
    setName(newName);
    for (var i = 0; i < nbPlayers; i++) {
      players.add(Player());
      players[i].init(maximumValuePlayer, "Player${i+1}");
    }
  }

  void setName(newName) {
    name = newName;
  }
  
  @override
  String toString() {
    return "Team Name: $name, Players: ${players.toString()}";
  }
}