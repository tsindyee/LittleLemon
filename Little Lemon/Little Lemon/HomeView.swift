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
