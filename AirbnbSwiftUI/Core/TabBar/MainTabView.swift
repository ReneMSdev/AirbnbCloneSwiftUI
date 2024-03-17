//
//  MainTabView.swift
//  AirbnbSwiftUI
//
//  Created by Rene Salomone on 3/15/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistView()
                .tabItem { Label("Wishlist", systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person.circle") }
        }
    }
}

#Preview {
    MainTabView()
}
