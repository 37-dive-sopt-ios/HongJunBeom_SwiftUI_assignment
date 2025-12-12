//
//  RecentOrderView.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/12/25.
//

import SwiftUI

struct RecentOrderView: View {
    
    let recentOrders: [RecentOrderItem]
    
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Text("최근에 주문했어요")
                        .font(.title_sb_18)
                        .foregroundStyle(.baeminBlack)
                    Image(systemName: "info.circle")
                        .foregroundStyle(.baeminBlack)
                }
                
                Spacer()
                
                Text("전체보기 >")
                    .font(.body_r_14)
            }
            .padding(.vertical, 10)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(recentOrders) { order in
                        VStack(alignment: .leading) {
                            Image(order.recentImage)
                                .resizable()
                                .frame(width: 188, height: 126)
                            
                            Label("최근 \(order.numberOfRecent)번 주문한 가게", systemImage: "clock.arrow.trianglehead.counterclockwise.rotate.90")
                                .font(.body_r_12)
                                .foregroundStyle(.recent)
                            
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
                                
                                BadgeView(title: "픽업가능")
                                
                                BadgeView(title: "예약가능")
                            }
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

#Preview {
    RecentOrderView(recentOrders: RecentOrderItem.mockData)
}
