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
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
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
                VStack {
                    Text("First Name:")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Please enter your first name", text: $firstName)
                    Text("Last Name:")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Please enter your last name", text: $lastName)
                    Text("Email:")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Please enter your email", text: $email)
                    Button("Register") {
                        if !firstName.isEmpty &&
                            !lastName.isEmpty &&
                            !email.isEmpty && email.contains("@") {
                            UserDefaults.standard.set(firstName, forKey: kFirstName)
                            UserDefaults.standard.set(lastName, forKey: kLastName)
                            UserDefaults.standard.set(email, forKey: kEmail)
                            UserDefaults.standard.set(true, forKey: kIsLoggedIn)
                            
                            isLoggedIn = true
                        } else {
                            print("Information not valid")
                        }
                    }
                    Spacer()
                }
                .padding()
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
