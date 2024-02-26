//
//  ContentView.swift
//  StackViewDemo
//
//  Created by Héctor Julián Selley Rojas on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            VStack {
                Text("Instant Developer")
                    .fontWeight(.medium)
                    .font(.system(size: 40))
                    .foregroundStyle(.indigo)
                
                Text("Get help from experts in 15 minutes.")
            }
            
            HStack(alignment: .bottom, spacing: 10) {
                Image("user1")
                    .resizable()
                    .scaledToFit()
                //.aspectRatio(contentMode: .fit)
                
                Image("user2")
                    .resizable()
                    .scaledToFit()
                
                Image("user3")
                    .resizable()
                    .scaledToFit()
            }
            .padding(.horizontal, 20)
            
            Text("Need help with coding problems? Register!")
            
            Spacer()
            
            VStack {
                // Sign up Button
                Button {
                    
                } label: {
                    Text("Sign Up")
                }
                .frame(width: 200)
                .padding()
                .foregroundStyle(.white)
                .background(Color.indigo)
                .cornerRadius(10)
                
                // Log in Button
                Button {
                    
                } label: {
                    Text("Log in")
                }
                .frame(width: 200)
                .padding()
                .foregroundStyle(.white)
                .background(Color.gray)
                .cornerRadius(10)
            }
     
        }
        .padding(.top, 30)
    }
}

#Preview {
    ContentView()  
}
