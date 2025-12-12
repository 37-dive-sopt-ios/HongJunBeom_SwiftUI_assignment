//
//  MartItem.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/10/25.
//

import Foundation

struct MartItem: Identifiable {
    var id: Int
    var title: String
    var martImage: String
}

extension MartItem {
    static let mockData: [MartItem] = [
        MartItem(id: 0, title: "B마트", martImage: "mart_bmart"),
        MartItem(id: 1, title: "CU", martImage: "cu"),
        MartItem(id: 2, title: "이마트슈퍼", martImage: "emartEveryday"),
        MartItem(id: 3, title: "홈플러스", martImage: "homeplus"),
        MartItem(id: 4, title: "GS25", martImage: "gs25"),
        MartItem(id: 5, title: "이마트", martImage: "emart"),
        MartItem(id: 6, title: "홈플러스", martImage: "homeplus"),
        MartItem(id: 7, title: "GS25", martImage: "gs25"),
        ]
}
