//
//  TabView.swift
//  BaeMinSwiftUI
//
//  Created by 홍준범 on 12/10/25.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            // 1. 홈
            BaeMinHomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }

            // 2. 장보기·쇼핑
            Text("장보기·쇼핑")
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("장보기·쇼핑")
                }

            // 3. 찜
            Text("찜")
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("찜")
                }

            // 4. 주문내역
            Text("주문내역")
                .tabItem {
                    Image(systemName: "list.bullet.rectangle")
                    Text("주문내역")
                }

            // 5. 마이배민
            Text("마이배민")
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("마이배민")
                }
        }
    }
}

#Preview {
    RootTabView()
}
