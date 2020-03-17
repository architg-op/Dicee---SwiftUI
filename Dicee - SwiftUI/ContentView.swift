//
//  ContentView.swift
//  Dicee - SwiftUI
//
//  Created by Archit Garg on 17/03/20.
//  Copyright © 2020 Archit tech. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
            .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                HStack {
                    DiceView(diceNumber: 1)
                    DiceView(diceNumber: 2)
                }
                .padding(.horizontal)
                Button(action: {
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
            
        }
    }
}

struct DiceView: View {
    var diceNumber : Int
    var body: some View {
        Image("dice\(diceNumber)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

