//
//  SearchBar.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/12/25.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        Button(action: {
            print("검색")
        }) {
            HStack {
                Text("찾아라! 맛있는 음식과 맛집")
                    .foregroundStyle(.baeminGray300)
                    .font(.body_r_14)
                
                Spacer()
                Image(systemName: "magnifyingglass")
            }
            .frame(width: 343, height: 40)
            .padding(.horizontal, 16)
            .background(Color.white)
            .cornerRadius(25)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.baeminBlack, lineWidth: 1)
            )
        }
        .buttonStyle(PlainButtonStyle())
    }
}
