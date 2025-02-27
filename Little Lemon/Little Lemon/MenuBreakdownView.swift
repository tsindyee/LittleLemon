//
//  MenuBreakdownView.swift
//  Little Lemon
//
//  Created by Tang Sin Yee on 2025-02-27.
//

import SwiftUI

struct MenuBreakdownView: View {
    var body: some View {
        VStack {
            Text("ORDER FOR DELIVERY!")
            HStack(spacing: 30) {
                Text("Starters")
                    .background(.gray)
                Text("Mains")
                    .background(.gray)
                Text("Desserts")
                    .background(.gray)
                Text("Drink")
                    .background(.gray)
            }
        }
    }
}

#Preview {
    MenuBreakdownView()
}
