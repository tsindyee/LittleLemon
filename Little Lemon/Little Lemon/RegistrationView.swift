//
//  RegistrationView.swift
//  Little Lemon
//
//  Created by Tang Sin Yee on 2025-02-28.
//

import SwiftUI

struct RegistrationView: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var isValid = false
    @State var showAlert = false
    @State var alertMessage = ""
    
    var body: some View {
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
            Button("Next") {
                if firstName.isEmpty ||
                    lastName.isEmpty ||
                    email.isEmpty {
                    alertMessage = "Please fill in all fields before proceeding"
                    showAlert = true
                } else if !email.contains("@") || !email.contains(".") {
                    alertMessage = "Email format incorrect"
                    showAlert = true
                } else {
                    isValid = true
                }
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            NavigationLink(destination: ConfirmationView(firstName: firstName, lastName: lastName, email: email), isActive: $isValid) {
                EmptyView()
            }
            .padding()
            .disabled(firstName.isEmpty || lastName.isEmpty || email.isEmpty)
            Spacer()
        }
        .padding()
        .alert("Missing Information", isPresented: $showAlert) {
            Button("OK", role: .cancel) { }
        } message: {
            Text(alertMessage)
        }
    }
}

#Preview {
    RegistrationView()
}
