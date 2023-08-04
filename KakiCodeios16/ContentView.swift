//
//  ContentView.swift
//  KakiCodeios16
//
//  Created by Kaki on 2023/7/22.

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    @AppStorage("selectedMenu") var selectedMenu: Menu = .compass
    @GestureState var press = false
    
    var longPress: some Gesture {
        LongPressGesture(minimumDuration: 1)
            .updating($press) { currentState, gestureState, transaction in
                gestureState = currentState
            }
            .onEnded{ value in
                showMenu = true
            }
    }
    
    var body: some View {
        ZStack {
            Color(.systemBackground).ignoresSafeArea()
            switch selectedMenu {
            case .compass:
                MessageView()
            case .halfsheet:
                MenuView()
            default:
                Text("Text")
            }
        }
        .gesture(longPress)
        .sheet(isPresented: $showMenu){
            MenuView()
                .presentationDetents([.medium,.large])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
