//
//  AdvertisementView.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/12/25.
//

import SwiftUI

struct AdvertisementView: View {
    
    @State private var currentPage = 0
    
    let ads: [AdvertisementItem]
    
    var body: some View {
        TabView(selection: $currentPage) {
            ForEach(ads) { ad in
                Image(ad.adImage)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .tag(ad.id)
            }
        }
        .frame(height: 150)
        .tabViewStyle(.page)
    }
}
