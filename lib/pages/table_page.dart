import 'package:flutter/material.dart' hide Card;
import '../widgets/card_builder.dart';
import '../deck/deck.dart';
import 'package:poker/poker.dart';

class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deck = Deck();
    deck.shuffle();
    var board = deck.deal(5);
    print(board);
    var hand1 = deck.deal(2);
    var hand2 = deck.deal(2);
    print(hand1);

    final Set<Card> communityCards = {
      Card.fromString('${board[0]}'),
      Card.fromString('${board[1]}'),
      Card.fromString('${board[2]}'),
      Card.fromString('${board[3]}'),
      Card.fromString('${board[4]}'),
    };

    final hand1Range = HandRange.fromString('${hand1[0]}' + '${hand1[1]}');
    final hand2Range = HandRange.fromString('${hand2[0]}' + '${hand2[1]}');

    var simulator = Simulator(
        communityCards: communityCards, handRanges: [hand1Range, hand2Range]);

    print('Board: $communityCards');
    print('Hands: $hand1Range  $hand2Range');
    print('Best hands #: ${simulator.evaluate().bestHandIndexes}');

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardBuilder('${board[0]}'),
            CardBuilder('${board[1]}'),
            CardBuilder('${board[2]}'),
            CardBuilder('${board[3]}'),
            CardBuilder('${board[4]}'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardBuilder('${hand1[0]}'),
            CardBuilder('${hand1[1]}'),
            SizedBox(width: 50.0),
            CardBuilder('${hand2[0]}'),
            CardBuilder('${hand2[1]}'),
          ],
        ),
      ],
    );
  }
}
