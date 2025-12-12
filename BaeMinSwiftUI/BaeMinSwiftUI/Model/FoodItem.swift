//
//  FoodItem.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/10/25.
//

import Foundation

struct FoodItem: Identifiable {
    let id: Int
    let name: String
    let imageName: String
}

let foodItemsByCategory: [Int: [FoodItem] ] = [
    0: [ //음식배달
        FoodItem(id: 0, name: "한그릇", imageName: "food_one"),
        FoodItem(id: 1, name: "치킨", imageName: "food_chicken"),
        FoodItem(id: 2, name: "카페/디저트", imageName: "food_cafe"),
        FoodItem(id: 3, name: "푸드페스트", imageName: "food_foodfest"),
        FoodItem(id: 4, name: "분식", imageName: "food_bunsik"),
        FoodItem(id: 5, name: "고기", imageName: "food_korean"),
        FoodItem(id: 6, name: "찜탕", imageName: "food_stew"),
        FoodItem(id: 7, name: "중국집", imageName: "food_chinese"),
        FoodItem(id: 8, name: "패스트푸드", imageName: "food_burger"),
        FoodItem(id: 9, name: "빽다방", imageName: "food_bback")
       ]
    ,
    1: [ // 픽업
        FoodItem(id: 0, name: "근처 맛집", imageName: "food_bback"),
        FoodItem(id: 1, name: "카페", imageName: "food_bunsik"),
        FoodItem(id: 2, name: "지도", imageName: "food_foodfest"),
        FoodItem(id: 3, name: "카페/디저트", imageName: "food_chinese"),
        FoodItem(id: 4, name: "식사", imageName: "food_stew"),
        FoodItem(id: 5, name: "식사", imageName: "food_cafe"),
        FoodItem(id: 6, name: "식사", imageName: "food_chicken"),
        FoodItem(id: 7, name: "빽다방", imageName: "food_korean"),
        FoodItem(id: 8, name: "스타벅스", imageName: "food_burger"),
        FoodItem(id: 9, name: "투썸플레이스", imageName: "food_one")
       ]
    ,
    2: [ //장보기 쇼핑
        FoodItem(id: 0, name: "B마트", imageName: "food_korean"),
        FoodItem(id: 1, name: "마트", imageName: "food_burger"),
        FoodItem(id: 2, name: "편의점", imageName: "food_one"),
        FoodItem(id: 3, name: "디지털", imageName: "food_chicken"),
        FoodItem(id: 4, name: "지금술픽", imageName: "food_cafe"),
        FoodItem(id: 5, name: "스와로브스", imageName: "food_bback"),
        FoodItem(id: 6, name: "아리따움", imageName: "food_chinese"),
        FoodItem(id: 7, name: "JAJU", imageName: "food_stew"),
        FoodItem(id: 8, name: "삼성스토어", imageName: "food_bunsik"),
        FoodItem(id: 9, name: "전국특가", imageName: "food_foodfest")
       ],
    3: [ //장보기 쇼핑
        FoodItem(id: 0, name: "B마트", imageName: "food_korean"),
        FoodItem(id: 1, name: "마트", imageName: "food_burger"),
        FoodItem(id: 2, name: "편의점", imageName: "food_one"),
        FoodItem(id: 3, name: "디지털", imageName: "food_chicken"),
        FoodItem(id: 4, name: "지금술픽", imageName: "food_cafe"),
        FoodItem(id: 5, name: "스와로브스", imageName: "food_bback"),
        FoodItem(id: 6, name: "아리따움", imageName: "food_chinese"),
        FoodItem(id: 7, name: "JAJU", imageName: "food_stew"),
        FoodItem(id: 8, name: "삼성스토어", imageName: "food_bunsik"),
        FoodItem(id: 9, name: "전국특가", imageName: "food_foodfest")
       ],
    4: [ //장보기 쇼핑
        FoodItem(id: 0, name: "B마트", imageName: "food_korean"),
        FoodItem(id: 1, name: "마트", imageName: "food_burger"),
        FoodItem(id: 2, name: "편의점", imageName: "food_one"),
        FoodItem(id: 3, name: "디지털", imageName: "food_chicken"),
        FoodItem(id: 4, name: "지금술픽", imageName: "food_cafe"),
        FoodItem(id: 5, name: "스와로브스", imageName: "food_bback"),
        FoodItem(id: 6, name: "아리따움", imageName: "food_chinese"),
        FoodItem(id: 7, name: "JAJU", imageName: "food_stew"),
        FoodItem(id: 8, name: "삼성스토어", imageName: "food_bunsik"),
        FoodItem(id: 9, name: "전국특가", imageName: "food_foodfest")
       ]
]
