//
//  BaeMinHomeView.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/8/25.
//

import SwiftUI

struct BaeMinHomeView: View {
    var body: some View {
        ScrollView {
            LazyVStack(pinnedViews: [.sectionHeaders]) {
                HomeNavigationView()
                
                Section {
                    EventBanner()
                    
                    CategorySectionView(categories: categories)
                    
                    MartRowView(marts: MartItem.mockData)
                    
                    AdvertisementView(ads: AdvertisementItem.mockData)
                    
                    RankingView(rankings: RankingItem.mockData)
                    
                    RecentOrderView(recentOrders: RecentOrderItem.mockData)
                    
                    DiscountStoreView(recentOrders: RecentOrderItem.mockData)
                } header: {
                    SearchBar()
                        .background(Color.white)
                }
            }
        }
        .background(Color.baeminBackgroundWhite)
        .clipped()
    }
}

#Preview {
    BaeMinHomeView()
}
