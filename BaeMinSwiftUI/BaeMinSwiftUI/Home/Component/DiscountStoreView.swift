//
//  DiscountStoreView.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/12/25.
//

import SwiftUI

struct DiscountStoreView: View {
    
    let recentOrders: [RecentOrderItem]
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        Text("무조건 할인하는 가게")
                            .font(.title_sb_18)
                        
                        Image(systemName: "info.circle")
                    }
                    
                    Text("2천원 또는 15% 이상 할인중")
                        .font(.body_r_14)
                        .foregroundStyle(.baeminGray300)
                }
                .padding(.vertical, 10)
                
                Spacer()
                
                Image(.discount)
                    .resizable()
                    .frame(width: 66, height: 59)
            }
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(recentOrders) { order in
                        VStack(alignment: .leading) {
                            Image(order.recentImage)
                                .resizable()
                                .frame(width: 188, height: 126)
                            
                            HStack {
                                Text(order.storeName)
                                    .font(.head_b_14)
                                
                                Image(.star)
                                    .resizable()
                                    .frame(width: 11, height: 10)
                                
                                Text(order.starLevel)
                                    .font(.head_b_14)
                            }
                            HStack {
                                HStack(spacing: 2) {
                                    Image(.won)
                                    Text("\(order.deliveryTime)분")
                                        .font(.body_r_13)
                                }
                                
                                HStack(spacing: 2) {
                                    Image(.won)
                                    Text(order.deliveryFee)
                                        .font(.head_b_13)
                                        .foregroundStyle(.minimumPrice)
                                }
                            }
                            HStack(spacing: 6) {
                                BaeMinClubBadge()
                                BadgeView(title: "소비쿠폰")
                                BadgeView(title: "픽업가능")
                            }
                            
                            BadgeView(title: "위생인증")
                        }
                    }
                }
            }
        }
        .padding()
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 0)
                .stroke(Color(.systemGray5), lineWidth: 1)
        )
    }
}

struct BaeMinClubBadge: View {
    var body: some View {
        HStack(spacing: 2) {
            Image(.baeminClub)
                .resizable()
                .frame(width: 14, height: 14)
                .foregroundStyle(.white)
            
            Text("배민클럽")
                .font(.title_sb_10)
                .foregroundStyle(.baeminMint600)
        }
        .padding(.vertical, 2)
        .padding(.horizontal, 4)
        .background(Color.baeminMint500.opacity(0.1))
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color.baeminMint500, lineWidth: 2)
        )
    }
}

struct BadgeView: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.title_sb_10)
            .foregroundStyle(.baeminGray800)
            .padding(.horizontal, 4)
            .padding(.vertical, 2)
            .background(Color.baeminBackgroundWhite)
            .cornerRadius(4)
    }
}

#Preview {
    DiscountStoreView(recentOrders: RecentOrderItem.mockData)
}


