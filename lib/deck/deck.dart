import 'card.dart';

class Deck {
  List<MyCard> cards = [];

  Deck() {
    Set ranks = {
      'A',
      'K',
      'Q',
      'J',
      'T',
      '9',
      '8',
      '7',
      '6',
      '5',
      '4',
      '3',
      '2'
    };

    Set suits = {'s', 'd', 'c', 'h'};

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = MyCard(rank + suit);
        cards.add(card);
      }
    }
  }

  @override
  String toString() => cards.toString();

  List<MyCard> shuffle() {
    cards.shuffle();
    return cards;
  }

  // List<Card> cardsWithSuit(String suit) {
  //   return cards.where((card) => card.suit == suit).toList();
  // }

  List<MyCard> deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    return hand;
  }

  int length() => cards.length;

  void removeCard(String rankSuit) {
    cards.removeWhere((card) {
      return (card.rankSuit == rankSuit);
    });
  }
}
