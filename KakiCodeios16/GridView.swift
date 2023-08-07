//
//  GridView.swift
//  KakiCodeios16
//
//  Created by Kaki on 2023/8/7.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        Grid(alignment: .leading, horizontalSpacing: 12, verticalSpacing: 12) {
            GridRow {
                Text("Votes")
                    .gridCellColumns(2)
                Text("Rating")
            }
            Divider()
                .gridCellUnsizedAxes(.horizontal)
            GridRow {
                Text("4")
                ProgressView(value: 0.1)
                    .frame(maxWidth: 250)
                RatingView(rating: 1)
            }
            GridRow {
                Text("21")
                ProgressView(value: 0.2)
                    .frame(maxWidth: 250)
                RatingView(rating: 2)
            }
        }
        .padding(20)
    }
}

struct RatingView: View {
    var rating = 3
    let list = [1,2,3,4,5]
    var body: some View{
        HStack(spacing: 0) {
            ForEach(list, id: \.self) { item in
                Image(systemName: rating >= item ? "star.fill" : "star")
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
