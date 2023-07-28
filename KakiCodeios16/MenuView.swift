//
//  Menuview.swift
//  KakiCodeios16
//
//  Created by Kaki on 2023/7/28.
//

import SwiftUI

struct MenuView: View {
    @Binding var selectedMenu: Menu
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        List(navigationItems) { item in
            Button {
                selectedMenu = item.menu
                presentationMode.wrappedValue.dismiss()
            } label: {
                Label(item.title, systemImage: item.icon)
                    .foregroundColor(.primary)
                    .padding(8)
            }
        }
        .listStyle(.plain)
    }
}

struct Menuview_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(selectedMenu: .constant(.compass))
    }
}
