//
//  RegistrationView.swift
//  BookNook
//
//  Created by Tiffany Lin Fu on 1/5/25.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            // Input Fields
            VStack(spacing: 14) {
                InputView(
                    text: $fullname,
                    title: "Full Name",
                    placeholder: "John Doe",
                    isSecureField: true
                ).autocapitalization(.none)
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
                InputView(
                    text: $confirmPassword,
                    title: "Confirm Password",
                    placeholder: "Re-enter Password",
                    isSecureField: true
                ).autocapitalization(.none)
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            // Sign In Button
            Button {
                print("Register user")
            } label: {
                Text("Sign Up")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }
            .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            .background(Color(.systemBlue))
            .cornerRadius(10)
            .padding(.top, 24)
            
            Spacer()
            
            Button{
                dismiss() 
            } label: {
                Text("Sign In")
            }
        }
    }
}

#Preview {
    RegistrationView()
}
