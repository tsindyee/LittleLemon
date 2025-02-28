//
//  Onboarding.swift
//  Little Lemon
//
//  Created by Tang Sin Yee on 2025-02-26.
//

import SwiftUI

let kFirstName = "firstNameKey"
let kLastName = "lastNameKey"
let kEmail = "emailKey"
let kIsLoggedIn = "kIsLoggedIn"

struct OnboardingView: View {
    @State var isLoggedIn = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: HomeView(), isActive: $isLoggedIn) {
                    EmptyView()
                }
                .hidden()
                HStack {
                    Image("Logo")
                        .scaledToFit()
                }
                .frame(height: 60)
                HeroView(showSearchBar: false)
                    .background(.primaryColor1)
                Text("Welcome to Little Lemon!")
                Text("Start order by registering an account")
                NavigationLink(destination: RegistrationView()) {
                    Text("Register / Login")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }.padding()
            }
            .onAppear(perform: {
                let savedLoggedIn = UserDefaults.standard.bool(forKey: kIsLoggedIn)
                if savedLoggedIn {
                    isLoggedIn = true
                }
            })
        }
    }
}

#Preview {
    OnboardingView()
}
