//
//  EmojiMemoryGame.swift
//  Stanford-SwiftUI
//
//  Created by Pavan Kumar on 04/07/20.
//  Copyright © 2020 https://github.com/pavankumar-n-46/Stanford-SwiftUI . All rights reserved.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()

    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷"]
        return MemoryGame<String>.init(numberOfpairs: emojis.count) { emojis[$0] }
    }

    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }

    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
