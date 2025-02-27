//
//  HeroView.swift
//  Little Lemon
//
//  Created by Tang Sin Yee on 2025-02-27.
//

import SwiftUI

struct HeroView: View {
    @State var searchHeroText = ""
    @State var showSearchBar = true
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Little Lemon")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primaryColor2)
                    Text("Chicaga")
                        .font(.title3)
                        .foregroundColor(.highlightColor1)
                    Text("We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.")
                        .foregroundColor(.highlightColor1)
                }
                Image("Hero image")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
            }
            .padding([.horizontal, .top])
            if showSearchBar {
                TextField("Search", text: $searchHeroText)
                    .frame(height: 30)
                    .background(.highlightColor1)
                    .padding()
            }
        }
    }
}

#Preview {
    HeroView()
        .background(.primaryColor1)
}
