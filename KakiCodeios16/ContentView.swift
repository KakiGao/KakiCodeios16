//
//  ContentView.swift
//  KakiCodeios16
//
//  Created by Kaki on 2023/7/22.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    @State var selectedMenuItem: Menu = .compass
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
            switch selectedMenuItem {
            case .compass:
                MessageView()
            default:
                Text("Text")
            }
        }
        .gesture(longPress)
        .sheet(isPresented: $showMenu){
            MenuView(selectedMenu: $selectedMenuItem)
                .presentationDetents([.medium,.large])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
