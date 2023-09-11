import 'dart:math';

import 'package:team_builder_football/Models/player.dart';
import 'package:team_builder_football/Models/team.dart';
import 'package:team_builder_football/const.dart';

enum FieldAction {defense, offense, dribble}

class Match {
  var opponentTeam = Team();
  var temporaryUserTeam = Team();
  var userHand = [];
  var opponentHand = [];
  var userPool = [];
  var opponentPool = [];
  var action = FieldAction.dribble;

  void init(){
    opponentTeam.init(10, "Opponent team", 100);
    temporaryUserTeam = userTeam;
    temporaryUserTeam.players.shuffle();
    for (var i = 0; i < 5; i++) {
      userHand.add(temporaryUserTeam.players[i]);
      opponentHand.add(opponentTeam.players[i]);
      userPool.add(temporaryUserTeam.players[i+5]);
      opponentPool.add(opponentTeam.players[i+5]);
    }
  }

  Player selectPlayerUser(int idSelectedPlayer){
    var selectedPlayer = userHand[idSelectedPlayer];
    userHand.removeAt(idSelectedPlayer);
    userHand.add(userPool.first);
    userPool.removeAt(0);
    userPool.add(selectedPlayer);
    return selectedPlayer;
  }

  Player selectPlayerOpponent(){
    var randomId = Random().nextInt(5+1);
    var selectedPlayer = opponentHand[randomId];
    opponentHand.removeAt(randomId);
    opponentHand.add(opponentPool.first);
    opponentPool.removeAt(0);
    opponentPool.add(selectedPlayer);
    return selectedPlayer;
  }

  

}