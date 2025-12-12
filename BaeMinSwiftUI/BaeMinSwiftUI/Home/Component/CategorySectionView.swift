//
//  CategorySectionView.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/12/25.
//

import SwiftUI

struct CategorySectionView: View {
    @State private var selectedCategory: Int = 0
    let categories: [Category]
    
    var body: some View {
        VStack {
            CategoryTabView(selectedCategory: $selectedCategory, categories: categories)
                .padding(.top, 12)
                .padding(.bottom, -8)
            
            Divider()
            
            TabView(selection: $selectedCategory) {
                ForEach(categories) { category in
                    VStack(spacing: 12) {
                        FoodGridView(selectedCategory: category.id)
                            .padding(.horizontal, 16)
                        
                        Divider()
                        
                        SeeMoreView(category: category)
                            .padding(.horizontal, 16)
                    }
                    .tag(category.id)
                }
            }
            .frame(height: 260)
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 0)
                .stroke(Color(.systemGray5), lineWidth: 1)
        )
    }
}

struct CategoryTabView: View {
    @Binding var selectedCategory: Int
    let categories: [Category]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(categories) { category in
                    Text(category.title)
                        .font(.head_b_18)
                        .foregroundStyle(isSelected(category.id) ? .baeminBlack : .baeminGray300)
                        .padding(.bottom, 10)
                        .overlay(
                            Rectangle()
                                .fill(Color.black)
                                .frame(height: 3)
                                .opacity(isSelected(category.id) ? 1 : 0), alignment: .bottom
                        )
                        .onTapGesture {
                            withAnimation {
                                selectedCategory = category.id
                            }
                        }
                }
            }
        }
        .padding(.horizontal)
    }
    
    private func isSelected(_ id: Int) -> Bool {
        selectedCategory == id
    }
}

struct FoodGridView: View {
    
    let selectedCategory: Int
    
    var items: [FoodItem] {
        foodItemsByCategory[selectedCategory] ?? []
    }
    
    let columns = [
        GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()),
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(items) { item in
                VStack(spacing: 8) {
                    Image(item.imageName)
                        .resizable()
                        .frame(width: 58, height: 58)
                        
                    Text(item.name)
                        .font(.body_r_14)
                }
            }
        }
    }
}

struct SeeMoreView: View {
    
    let category: Category
    
    var body: some View {
        Text("\(category.title)에서 더보기 >")
            .font(.head_b_14)
    }
}


