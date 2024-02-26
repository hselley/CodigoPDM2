//
//  ContentView.swift
//  FoodPin
//
//  Created by Héctor Julián Selley Rojas on 26/02/24.
//

import SwiftUI

struct RestarantListView: View {
    
    var restaurantNames = [
        "Cafe Deadend", "Homei", "Teakha", "Cafe Loisl",
        "Petite Oyster", "For Kee Restaurant", "Po's Atelier",
        "Bourke Street Bakery", "Haigh's Chocolate",
        "Palomino Espresso", "Upstate", "Traif",
        "Graham Avenue Meats And Deli", "Waffle & Wolf",
        "Five Leafs", "Cafe Lore", "Confessional", "Barrafina",
        "Donostia", "Royal Oak", "CASK Pub and Kitchen"
    ]
    
    var restaurantImages = [
        "cafedeadend", "homei", "teakha", "cafeloisl",
        "petiteoyster", "forkee", "posatelier",
        "bourkestreetbakery", "haigh", "palomino",
        "upstate", "traif", "graham", "waffleandwolf",
        "fiveleaves", "cafelore", "confessional",
        "barrafina", "donostia", "royaloak", "cask"
    ]
    
    var body: some View {
        List {
            ForEach(restaurantNames.indices, id: \.self) {
                index in 
                
                HStack {
                    Image(restaurantImages[index])
                        .resizable()
                        .frame(width: 120, height: 120)
                    
                    VStack(alignment: .leading) {
                        Text(restaurantNames[index])
                            .font(.system(.title2, design: .rounded))
                        
                        Text("Type")
                            .font(.system(.body, design: .rounded))
                        
                        Text("Location")
                            .font(.system(.subheadline, design: .rounded))
                            .foregroundStyle(.gray)
                    }
                }
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    RestarantListView()
}