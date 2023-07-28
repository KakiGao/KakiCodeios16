//
//  Navigation.swift
//  KakiCodeios16
//
//  Created by Kaki on 2023/7/28.
//

import SwiftUI

struct NavigationStackView: View {
    var body: some View {
        NavigationStack {
            List(navigationItems) { item in
                NavigationLink(value: item) {
                    Label(item.title, systemImage: item.icon)
                        .foregroundColor(.primary)
                }
            }
            .navigationDestination(for: NavigationItem.self){ item in
                switch item.menu {
                case .compass:
                    MessageView()
                default:
                    Text(item.title)
                }
            }
            .navigationTitle("SwiftUI Apps")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(.plain)
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackView()
    }
}
