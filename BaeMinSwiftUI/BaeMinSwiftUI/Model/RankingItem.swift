//
//  RankingItem.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/11/25.
//

import Foundation

struct RankingItem: Identifiable {
    let id: Int
    let rankingImage: String
    let storeName: String
    let starLevel: String
    let numberOfReview: String
    let menuName: String
    let discount: String
    let price: String
    let originalPrice: String
    let minimumPurchase: String
}

extension RankingItem {
    static let mockData: [RankingItem] = [
        RankingItem(id: 0, rankingImage: "ranking1", storeName: "올데이파스타", starLevel: "5.0", numberOfReview: "2,275", menuName: "취향대로 셀프 한그릇 파스타", discount: "22%", price: "10,900원", originalPrice: "14,000원", minimumPurchase: "최소주문금액없음"),
        RankingItem(id: 1, rankingImage: "ranking2", storeName: "판다파스타", starLevel: "5.0", numberOfReview: "4,376", menuName: "[NEW] 베이컨 투움바 파스타", discount: "20%", price: "11,100원", originalPrice: "13,900원", minimumPurchase: "최소주문금액없음"),
        RankingItem(id: 2, rankingImage: "ranking3", storeName: "와떠마라탕", starLevel: "4.9", numberOfReview: "3,604", menuName: "와떠마라반(마라비빔)", discount: "20%", price: "12,000원", originalPrice: "15,000원", minimumPurchase: "최소주문금액없음"),
        RankingItem(id: 3, rankingImage: "ranking4", storeName: "판다파스타", starLevel: "4.9", numberOfReview: "4,376", menuName: "내맘대로 한그릇 파스타", discount: "22%", price: "10,900원", originalPrice: "14,000원", minimumPurchase: "최소주문금액없음")
        
        
    ]
        
}
