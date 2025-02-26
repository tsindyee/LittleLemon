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


                TextField("First Name", text: $firstName)
                TextField("Last Name", text: $lastName)
                TextField("Email", text: $email)
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
            }
            .onAppear(perform: {
                let savedLoggedIn = UserDefaults.standard.bool(forKey: kIsLoggedIn)
                if savedLoggedIn {
                    isLoggedIn = true
                }
            })
            .padding()
        }
    }
}

#Preview {
    OnboardingView()
}
