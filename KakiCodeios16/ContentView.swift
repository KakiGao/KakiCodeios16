//
//  ContentView.swift
//  KakiCodeios16
//
//  Created by Kaki on 2023/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20.0) {
            Image(systemName: "timelapse", variableValue: 0.1)
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .font(.system(size: 50))
                .fontWeight(.thin)
            Text("Switching Apps")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Tap and hold any part of the screen for 1 second to show the menu for switching between apps.")
                .multilineTextAlignment(.center)
            Button {
                
            }label: {
                Text("Got it")
                    .padding(.all)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke()
                    )
            }
            .accentColor(.black)
        }
        .padding(30)
        .background(.regularMaterial)
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke())
        .padding(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
