//
//  ContentView.swift
//  Stanford-SwiftUI
//
//  Created by Pavan Kumar on 24/05/20.
//  Copyright © 2020 https://github.com/pavankumar-n-46/Stanford-SwiftUI . All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach( 1..<4 ) {_ in
                CardView(isFaceUp: true)
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
