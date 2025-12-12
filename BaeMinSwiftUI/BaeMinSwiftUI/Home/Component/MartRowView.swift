//
//  MartGridView.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/12/25.
//

import SwiftUI

struct MartRowView: View {
    
    let marts: [MartItem]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(marts) { mart in
                    VStack {
                        Image(mart.martImage)
                            .resizable()
                            .frame(width: 58, height: 58)
                        
                        Text(mart.title)
                            .font(.title_sb_14)
                    }
                }
            }.padding()
        }
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 0)
                .stroke(Color(.systemGray5), lineWidth: 1)
        )
    }
}
