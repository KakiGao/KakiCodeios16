//
//  LineChartData.swift
//  KakiCodeios16
//
//  Created by Kaki on 2023/8/4.
//

import Foundation

struct DataItem: Identifiable {
    var id = UUID()
    var date: String
    var value: Double
}

struct YearData: Identifiable {
    var id = UUID()
    var year: String
    var data: [DataItem]
}

var lineChartData = [
    YearData(year: "2023", data: [
        DataItem(date: "Jun 1", value: 200),
        DataItem(date: "Jun 2", value: 96),
        DataItem(date: "Jun 3", value: 312),
        DataItem(date: "Jun 4", value: 256),
        DataItem(date: "Jun 5", value: 505)
    ]),
    YearData(year: "2024" ,data: [
        DataItem(date: "Jun 1", value: 151),
        DataItem(date: "Jun 2", value: 192),
        DataItem(date: "Jun 3", value: 176),
        DataItem(date: "Jun 4", value: 158),
        DataItem(date: "Jun 5", value: 401),
    ])
]
