//
//  NavigationListData.swift
//  KakiCodeios16
//
//  Created by Kaki on 2023/7/28.
//

import Foundation

struct NavigationItem: Identifiable, Hashable {
    var id = UUID()
    var title : String
    var icon : String
    var menu : Menu
}

var navigationItems = [
    NavigationItem(title: "Compass Apps", icon: "safari", menu: .compass),
    NavigationItem(title: "3D Cards", icon: "lanyardcard", menu: .card),
    NavigationItem(title: "Radial Layout", icon: "clock", menu: .radial),
    NavigationItem(title: "Gooey Action Button", icon: "plus.circle", menu: .actionbutton),
    NavigationItem(title: "Gooey Menu", icon: "drop", menu: .gooey),
    NavigationItem(title: "Charts", icon: "chart.xyaxis.line", menu: .charts),
    NavigationItem(title: "Half Sheet", icon: "rectangle.portrait.bottomhalf.filled", menu: .halfsheet)
]

enum Menu: String {
    case compass
    case card
    case radial
    case actionbutton
    case gooey
    case charts
    case halfsheet
}
