//
//  LoginView.swift
//  BookNook
//
//  Created by Tiffany Lin Fu on 1/5/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                // Input Fields
                VStack(spacing: 14) {
                    InputView(
                        text: $email,
                        title: "Email Address",
                        placeholder: "name@example.com"
                    ).autocapitalization(.none)
                    InputView(
                        text: $password,
                        title: "Password",
                        placeholder: "Enter Password",
                        isSecureField: true
                    ).autocapitalization(.none)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                // Sign In Button
                Button {
                    print("Log user in")
                } label: {
                    Text("Sign In")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 24)
                
                Spacer()
                
                // Sign Up Button
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Sign Up")
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
