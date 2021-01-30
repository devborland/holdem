import '../player/player.dart';

enum Stage { preflop, flop, turn, river, showdown }

abstract class Game {
  List<Player> players;
  double pot;
  Stage stage;

  Game(List<Player> players, double pot);
}

class Preflop extends Game {
  Preflop(List<Player> players, double pot) : super(players, pot) {
    players.last.bet(1);
    players[players.length - 2].bet(0.5);
    pot += 1.5;
  }
}
