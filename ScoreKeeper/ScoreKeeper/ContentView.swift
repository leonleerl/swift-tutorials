//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by 李润龙 on 18/11/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var players: [Player] = [
        Player(name: "Elisha", score: 0),
        Player(name: "Elisha", score: 0),
        Player(name: "Elisha", score: 0),

    ]
    var body: some View {
        Text("Score Keeper")
            .font(.title)
            .padding(.bottom)
            .bold()
        VStack {
            Grid{
                GridRow{
                    Text("Player")
                        .gridColumnAlignment(.leading)
                    Text("Score")
                }
                .font(.headline)
                ForEach($players) { $player in
                    GridRow{
                        TextField("Name", text: $player.name)
                        Text("\(player.score)")
                        Stepper("\(player.score)", value: $player.score)
                            .labelsHidden()
                    }
                }
            }
            .padding(.vertical)
            
            Button("Add Player", systemImage: "plus") {
                players.append(Player(name:"", score:0))
            }
            .bold()
            
            Spacer()
        }
        .padding()
    }

}

#Preview {
    ContentView()
}
