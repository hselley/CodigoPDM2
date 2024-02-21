//
//  ContentView.swift
//  miApp
//
//  Created by Héctor Julián Selley Rojas on 19/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Bienvenidos")
                .font(.system(size: 40))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            HStack {
                Button {
                    // Código a ejecutar por la acción del botón
                } label: {
                    Text("Opción 1")
                        .fontWeight(.bold)
                        .font(
                            .system(
                                .title,
                                design: .rounded
                            )
                    )
                }
                .padding()
                .foregroundColor(Color.white)
                .background(Color.purple)
                .cornerRadius(15)
                
                Button {
                    // Código a ejecutar por la acción del botón
                } label: {
                    Text("Opción 2")
                        .fontWeight(.bold)
                        .font(
                            .system(
                                .title,
                                design: .rounded
                            )
                    )
                }
                .padding()
                .foregroundColor(Color.white)
                .background(Color.purple)
                .cornerRadius(15)
            }
            Text("Seleccione una opción")
                .font(.title2)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
