//
//  Category.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/10/25.
//

import Foundation

struct Category: Identifiable {
    let id: Int
    let title: String
}

let categories = [
    Category(id: 0, title: "음식배달"),
    Category(id: 1, title: "픽업"),
    Category(id: 2, title: "장보기·쇼핑"),
    Category(id: 3, title: "선물하기"),
    Category(id: 4, title: "혜택모아보기")
]
