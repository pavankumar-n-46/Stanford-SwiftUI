//
//  ContentView.swift
//  Stanford-SwiftUI
//
//  Created by Pavan Kumar on 24/05/20.
//  Copyright © 2020 https://github.com/pavankumar-n-46/Stanford-SwiftUI . All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let viewModel: EmojiMemoryGame

    var body: some View {
        HStack {
            ForEach( viewModel.cards ) { card in
                CardView(card: card)
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card

    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
