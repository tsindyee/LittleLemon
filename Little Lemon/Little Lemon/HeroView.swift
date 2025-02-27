//
//  HeroView.swift
//  Little Lemon
//
//  Created by Tang Sin Yee on 2025-02-27.
//

import SwiftUI

struct HeroView: View {
    @State var searchHeroText = ""
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Little Lemon")
                        .font(.title)
                    Text("Chicaga")
                        .font(.title3)
                    Text("We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.")
                }
                Image("Hero image")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
            }
            .padding()
            TextField("Search", text: $searchHeroText)
                .frame(height: 30)
                .background(.gray)
                .padding()
        }
    }
}

#Preview {
    HeroView()
}
