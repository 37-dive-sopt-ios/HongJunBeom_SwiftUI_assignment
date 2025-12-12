//
//  RankingView.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/12/25.
//

import SwiftUI

struct RankingView: View {
    
    let rankings: [RankingItem]
    
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Text("우리 동네 한그릇 인기 랭킹")
                        .font(.title_sb_18)
                        .foregroundStyle(.baeminWhite)
                    Image(systemName: "info.circle")
                        .foregroundStyle(.baeminWhite)
                }
                
                Spacer()
                
                Text("전체보기 >")
                    .font(.body_r_14)
                    .foregroundStyle(.baeminWhite)
            }
            .padding(.vertical)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(rankings) { ranking in
                        VStack(alignment: .leading, spacing: 4) {
                            Image(ranking.rankingImage)
                                .resizable()
                                .frame(width: 145, height: 145)
                            
                            HStack {
                                Text(ranking.storeName)
                                    .font(.body_r_12)
                                    .foregroundStyle(.baeminGray600)
                                
                                Image(.star)
                                    .resizable()
                                    .frame(width: 11, height: 10)
                                
                                Text("(\(ranking.numberOfReview))")
                                    .font(.body_r_12)
                                    .foregroundStyle(.baeminGray600)
                                
                            }
                            Text(ranking.menuName)
                                .font(.body_r_14)
                            
                            HStack {
                                Text(ranking.discount)
                                    .font(.head_b_14)
                                    .foregroundStyle(.discount)
                                
                                Text(ranking.price)
                                    .font(.head_b_14)
                                    .foregroundStyle(.baeminBlack)
                            }
                            
                            Text(ranking.originalPrice)
                                .font(.body_r_12)
                                .foregroundStyle(.baeminGray600)
                                .strikethrough()
                            
                            Text(ranking.minimumPurchase)
                                .font(.head_b_13)
                                .foregroundStyle(.minimumPrice)
                            
                        }
                    }
                }
            }
        }
        .padding()
        .background(
            LinearGradient(gradient: Gradient(stops: [
                .init(color: .gradation1, location: 0.25),
                .init(color: .white, location: 0.3)
            ]), startPoint: .top, endPoint: .bottom)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 0)
                .stroke(Color(.systemGray5), lineWidth: 1)
        )
    }
}

#Preview {
    RankingView(rankings: RankingItem.mockData)
}
