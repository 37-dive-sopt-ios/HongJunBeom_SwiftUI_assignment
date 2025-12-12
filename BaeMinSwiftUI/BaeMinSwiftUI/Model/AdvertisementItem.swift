//
//  AdvertisementModel.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/11/25.
//

import Foundation

struct AdvertisementItem: Identifiable {
    let id: Int
    let adImage: String
}

extension AdvertisementItem {
    static let mockData: [AdvertisementItem] = [
        AdvertisementItem(id: 0, adImage: "ad1"),
        AdvertisementItem(id: 1, adImage: "ad2"),
        AdvertisementItem(id: 2, adImage: "ad3"),
        AdvertisementItem(id: 3, adImage: "ad4"),
        AdvertisementItem(id: 4, adImage: "ad5"),
    ]
}
