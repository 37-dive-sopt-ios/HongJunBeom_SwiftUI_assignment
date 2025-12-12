//
//  RecentOrderItem.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/11/25.
//

import Foundation

struct RecentOrderItem: Identifiable {
    let id: Int
    let recentImage: String
    let numberOfRecent: String
    let storeName: String
    let starLevel: String
    let deliveryTime: String
    let deliveryFee: String
}

extension RecentOrderItem {
    static let mockData: [RecentOrderItem] = [
        RecentOrderItem(id: 0, recentImage: "recent1", numberOfRecent: "1", storeName: "마포매운쌀떡볶이 회기점", starLevel: "5.0", deliveryTime: "10~20", deliveryFee: "무료배달"),
        RecentOrderItem(id: 1, recentImage: "recent2", numberOfRecent: "4", storeName: "서향", starLevel: "4.9", deliveryTime: "40~51", deliveryFee: "무료배달"),
        RecentOrderItem(id: 2, recentImage: "recent3", numberOfRecent: "3", storeName: "처갓집양념치킨 회기점", starLevel: "5.0", deliveryTime: "20~39", deliveryFee: "무료배달"),
        RecentOrderItem(id: 3, recentImage: "recent4", numberOfRecent: "2", storeName: "BBQ올떡볶이 외대점", starLevel: "4.9", deliveryTime: "15~36", deliveryFee: "무료배달")
    ]
}
