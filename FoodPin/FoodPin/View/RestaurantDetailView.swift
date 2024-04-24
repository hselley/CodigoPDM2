//
//  RestaurantDetailView.swift
//  FoodPin
//
//  Created by Héctor Julián Selley Rojas on 10/04/24.
//

import Foundation
import SwiftUI

struct RestaurantDetailView: View {
    @Environment(\.dismiss) var dismiss
    @State private var showReview = false
    
    var restaurant: Restaurant
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(restaurant.image)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 445) // La imágen mide 445 pixeles de alto
                    .overlay {
                        VStack {
                            Image(systemName: restaurant.isFavorite ? "heart.fill" : "heart")
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity,
                                       minHeight: 0, maxHeight: .infinity,
                                       alignment: .topTrailing)
                                .padding()
                                .font(.system(size: 30))
                                .foregroundColor(restaurant.isFavorite ? .yellow : .white)
                                .padding(.top, 25)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text(restaurant.name)
                                    .font(.custom("Nunito-Regular", size: 35,
                                                  relativeTo: .largeTitle))
                                    .bold()
                                
                                Text(restaurant.type)
                                    .font(.system(.headline,
                                                  design: .rounded))
                                    .padding(.all, 5)
                                    .background(.black)
                            }
                            .foregroundColor(.white)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity,
                                   alignment: .bottomLeading)
                            .padding()
                        }
                    }
            }
            Text(restaurant.description)
                .padding()
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Address")
                        .font(.system(.headline, design: .rounded))
                    
                    Text(restaurant.location)
                }
                
                VStack(alignment: .leading) {
                    Text("Phone")
                        .font(.system(.headline, design: .rounded))
                    
                    Text(restaurant.phone)
                }
            }
            .padding(.horizontal)
            
            NavigationLink(
                destination:
                    MapView(location: restaurant.location)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ) {
                MapView(location: restaurant.location, interactionModes: [])
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                    .frame(height: 200)
                    .cornerRadius(20)
                    .padding()
            }
            
            Button(action: {
                self.showReview.toggle()
            }) {
                Text("Rate it")
                    .font(.system(.headline, design: .rounded))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            }
            .tint(Color.orange)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 25))
            .controlSize(.large)
            .padding(.horizontal)
            .padding(.bottom, 50)
            
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss()
                }, label: {
                    Text("\(Image(systemName: "chevron.left"))")
                })
            }
        }
        .ignoresSafeArea()
        .overlay(
            self.showReview ?
            ZStack {
                ReviewView(restaurant: restaurant)
                    .navigationBarHidden(true)
            }
            : nil
        )
    }
}

struct RestaurantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailView(
            restaurant:
                Restaurant(
                    name: "Cafe Deadend",
                    type: "Coffee & Tea Shop",
                    location: "G/F, 72 Po Hing Fong, Sheung Wan, Hong Kong",
                    phone: "232-923423",
                    description: "Searching for great breakfast eateries and coffee? This place is for you. We open at 6:30 every morning, and close at 9 PM. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. Come over and enjoy a great meal.",
                    image: "cafedeadend",
                    isFavorite: false
                )
        )
    }
}
