//
//  ChartView.swift
//  KakiCodeios16
//
//  Created by Kaki on 2023/8/4.
//

import SwiftUI
import Charts

struct ChartView: View {
    var body: some View {
        Chart {
            ForEach(lineChartData) { yearItem in
                ForEach(yearItem.data) { item in
                    LineMark(x: .value("Kaki", item.date), y:   .value("Value", item.value), series:
                        .value("Year", yearItem.year))
                        .cornerRadius(10)
                        .interpolationMethod(.cardinal)
                        .foregroundStyle(by: .value("Year", yearItem.year))
                        .symbol(by: .value("Year", yearItem.year))
                }
            }
        }
        .foregroundStyle(.linearGradient(colors: [.blue, .purple], startPoint: .top, endPoint: .bottom))
        .frame(height: 300)
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
