//
//  ContentView.swift
//  SimpleTable
//
//  Created by Héctor Julián Selley Rojas on 26/02/24.
//

import SwiftUI

struct ContentView: View {
    
    var restaurantNames = [
        "Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", 
        "Petite Oyster", "For Kee Restaurant", "Po's Atelier",
        "Bourke Street Bakery", "Haigh's Chocolate",
        "Palomino Espresso", "Upstate", "Traif", 
        "Graham Avenue Meats And Deli", "Waffle & Wolf",
        "Five Leafs", "Cafe Lore", "Confessional", "Barrafina", 
        "Donostia", "Royal Oak", "CASK Pub and Kitchen"
    ]
    
    var body: some View {
        List {
            ForEach(0...restaurantNames.count-1, id: \.self) {
                index in HStack {
                    Image("restaurant")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text(restaurantNames[index])
                }
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
