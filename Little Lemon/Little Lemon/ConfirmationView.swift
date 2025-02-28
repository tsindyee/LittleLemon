//
//  ConfirmationView.swift
//  Little Lemon
//
//  Created by Tang Sin Yee on 2025-02-28.
//

import SwiftUI

struct ConfirmationView: View {
    let firstName: String
    let lastName: String
    let email: String
    
    @State private var isRegistered = false
    
    var body: some View {
        HStack {
            Image("Logo")
                .scaledToFit()
        }
        .frame(height: 60)
        HeroView(showSearchBar: false)
            .background(.primaryColor1)
        VStack {
            Text("Please Confirm your information")
                .font(.title)
                .fontWeight(.bold)
            Text("First Name: \(firstName)")
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("Last Name: \(lastName)")
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("Email: \(email)")
                .frame(maxWidth: .infinity, alignment: .leading)
            Button("Register / Login") {
                UserDefaults.standard.set(firstName, forKey: kFirstName)
                UserDefaults.standard.set(lastName, forKey: kLastName)
                UserDefaults.standard.set(email, forKey: kEmail)
                UserDefaults.standard.set(true, forKey: kIsLoggedIn)

                isRegistered = true
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            Spacer()
            NavigationLink(destination: HomeView(), isActive: $isRegistered) {
                EmptyView()
            }
        }
        .padding()
    }
}

#Preview {
    let firstName = "AAA"
    let lastName = "BBB"
    let email = "CCC@DDD.com"
    ConfirmationView(firstName: firstName, lastName: lastName, email: email)
}
