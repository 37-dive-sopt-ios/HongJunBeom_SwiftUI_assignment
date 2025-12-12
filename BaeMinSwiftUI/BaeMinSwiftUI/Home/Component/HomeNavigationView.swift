//
//  HomeNavigationView.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/12/25.
//

import SwiftUI

struct HomeNavigationView: View {
    var body: some View {
        HStack {
            HStack(spacing: 4) {
                Text("우리집")
                    .font(.head_b_16)
                Image(.polygon)
                    .resizable()
                    .frame(width: 8, height: 5)
            }
            .padding()
            
            Spacer()
            
            HStack {
                Image(.sale)
                    .resizable()
                    .frame(width: 24, height: 24)
                
                Image(.bell)
                    .resizable()
                    .frame(width: 24, height: 24)
                
                Image(.cart)
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            .padding()
        }
    }
}
