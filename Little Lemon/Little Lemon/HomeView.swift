//
//  HomeView.swift
//  Little Lemon
//
//  Created by Tang Sin Yee on 2025-02-26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            MenuView().tabItem {
                Label("Menu", systemImage: "list.dash")
            }
            UserProfileView().tabItem {
                Label("Profile", systemImage: "square.and.pencil")
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HomeView()
}
