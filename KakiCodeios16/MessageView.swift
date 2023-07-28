//
//  MessageView.swift
//  KakiCodeios16
//
//  Created by Kaki on 2023/7/28.
//

import SwiftUI

struct MessageView: View {
    @State var time = 0.2
    @State var ShowMessage = true
    let timer = Timer.publish(every: 0.5, on: .main , in: .common).autoconnect()
    
    var body: some View {
        content
            .opacity(ShowMessage ? 1 : 0)
            .scaleEffect(ShowMessage ? 1 : 0)
            .rotationEffect(.degrees(ShowMessage ? 0 : 30))
            .offset(y : ShowMessage ? 0 : 500)
            .blur(radius: ShowMessage ? 0 : 20)
    }
    
    var content: some View {
        VStack(alignment: .center, spacing: 20.0) {
            Image(systemName: "timelapse", variableValue: time)
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .font(.system(size: 50))
                .fontWeight(.thin)
                .onReceive(timer) { value in
                    if(time < 1.0){
                        time += 0.1
                    }else{
                        time = 0.0
                    }
                }
            Text("Switching Apps".uppercased())
                .font(.largeTitle.width(.condensed))
                .fontWeight(.bold)
            Text("Tap and hold any part of the screen for 1 second to show the menu for switching between apps.")
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .fontWeight(.medium)
            Button {
                withAnimation(.easeInOut){
                    ShowMessage = false
                }
            }label: {
                Text("Got it")
                    .padding(.all)
                    .frame(maxWidth: .infinity)
                    .background(.white.opacity(0.2).gradient)
                    .cornerRadius(10)
                    .background(basicStroke)
            }
            .accentColor(.primary)
            .shadow(radius: 10)
        }
        .padding(30)
        .background(.ultraThinMaterial)
        .cornerRadius(10)
        .overlay(basicStroke)
        .shadow(color: .black.opacity(0.3), radius: 20, y: 20)
        .frame(maxWidth: 500)
        .padding(10)
        .dynamicTypeSize(.xSmall ... .xxxLarge)
    }
    
    var basicStroke : some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke()
            .foregroundStyle(.linearGradient(colors: [.white.opacity(0.5), .clear, .white.opacity(0.5), .clear], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
            .background(Image("Wallpaper 2"))
    }
}
