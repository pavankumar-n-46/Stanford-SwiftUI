//
//  MemoryGame.swift
//  Stanford-SwiftUI
//
//  Created by Pavan Kumar on 04/07/20.
//  Copyright © 2020 https://github.com/pavankumar-n-46/Stanford-SwiftUI . All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>

    init(numberOfpairs: Int, cardContentFactory: (Int)-> CardContent) {
        cards = Array<Card>()
        for pairOfCards in 0..<numberOfpairs {
            let content = cardContentFactory(pairOfCards)
            cards.append(Card(id: pairOfCards*2, content: content))
            cards.append(Card(id: pairOfCards*2+1, content: content))
        }
    }

    mutating func choose(card: Card) {
        print("the card is \(card)")
        let cardIndex = getIndex(card: card)
        self.cards[cardIndex].isFaceUp = !self.cards[cardIndex].isFaceUp
    }

    private func getIndex(card: Card) -> Int {
        for index in self.cards.indices {
            if self.cards[index].id == card.id {
                return index
            }
        }
        return 0 // TODO: bogus!
    }

    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
