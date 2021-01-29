import 'package:flutter/material.dart';
import 'package:playing_cards/playing_cards.dart';

class CardBuilder extends StatelessWidget {
  final String label;
  CardBuilder(this.label);

  @override
  Widget build(BuildContext context) {
    Suit suit;
    CardValue rank;

    switch (label[0]) {
      case 'A':
        rank = CardValue.ace;
        break;
      case 'K':
        rank = CardValue.king;
        break;
      case 'Q':
        rank = CardValue.queen;
        break;
      case 'J':
        rank = CardValue.jack;
        break;
      case 'T':
        rank = CardValue.ten;
        break;
      case '9':
        rank = CardValue.nine;
        break;
      case '8':
        rank = CardValue.eight;
        break;
      case '7':
        rank = CardValue.seven;
        break;
      case '6':
        rank = CardValue.six;
        break;
      case '5':
        rank = CardValue.five;
        break;
      case '4':
        rank = CardValue.four;
        break;
      case '3':
        rank = CardValue.three;
        break;
      case '2':
        rank = CardValue.two;
        break;
      default:
        rank = CardValue.two;
    }

    switch (label[1]) {
      case 's':
        suit = Suit.spades;
        break;
      case 'h':
        suit = Suit.hearts;
        break;
      case 'c':
        suit = Suit.clubs;
        break;
      case 'd':
        suit = Suit.diamonds;
        break;
      default:
        suit = Suit.diamonds;
    }

    return Expanded(
      child: Container(
        child: PlayingCardView(
          card: PlayingCard(suit, rank),
        ),
      ),
    );
  }
}
