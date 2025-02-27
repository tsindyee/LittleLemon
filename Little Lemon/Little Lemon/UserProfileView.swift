//
//  UserProfileView.swift
//  Little Lemon
//
//  Created by Tang Sin Yee on 2025-02-26.
//

import SwiftUI

struct UserProfileView: View {
    @Environment(\.presentationMode) var presentation
    
    let firstName = UserDefaults.standard.string(forKey: kFirstName)
    let lastName = UserDefaults.standard.string(forKey: kLastName)
    let email = UserDefaults.standard.string(forKey: kEmail)
    
    var body: some View {
        VStack {
            Text("Personal information")
            Image("profile-image-placeholder")
            Text("Name:")
            Text("\(firstName ?? "") \(lastName ?? "")")
            Text("Email:")
            Text(email ?? "")
            Button("Logout") {
                UserDefaults.standard.set(false, forKey: kIsLoggedIn)
                self.presentation.wrappedValue.dismiss()
            }
            Spacer()
        }
    }
}

#Preview {
    UserProfileView()
}
