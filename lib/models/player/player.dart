import 'position.dart';

class Player {
  final String nickname;
  final position;
  double stack;
  bool isFold = false;

  Player(
    this.nickname,
    this.position,
    this.stack,
  );

  double bet(double amount) {
    if (stack >= amount) {
      stack -= amount;
    } else
      throw 'Bet cant be bigger than Stack';
    print('$nickname bet $amount and stack = $stack');
    return stack;
  }

  // Setter for fold action
  void fold() => isFold = true;
}
