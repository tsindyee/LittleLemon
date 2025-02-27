//
//  HomeView.swift
//  Little Lemon
//
//  Created by Tang Sin Yee on 2025-02-26.
//

import SwiftUI

struct HomeView: View {
    let persistenceController = PersistenceController.shared
    
    var body: some View {
        HStack {
            Image("Logo")
                .scaledToFit()
            Image("profile-image-placeholder")
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45)
        }
        .frame(height: 60)
        TabView {
            MenuView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            UserProfileView().tabItem {
                Label("Profile", systemImage: "square.and.pencil")
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HomeView()
}
