//
//  EventBanner.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/12/25.
//

import SwiftUI

struct EventBanner: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(.bmart)
                .resizable()
                .scaledToFit()
                .frame(height: 20)
            
            Text("전상품 쿠폰팩 + 60%특가>")
                .font(.head_b_16)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
    }
}
