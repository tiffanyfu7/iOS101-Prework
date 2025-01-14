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
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            Spacer()
            
            // Input Fields
            VStack(spacing: 14) {
                InputView(
                    text: $fullname,
                    title: "Full Name",
                    placeholder: "John Doe",
                    isSecureField: false
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
                ZStack (alignment: .trailing){
                    InputView(
                        text: $confirmPassword,
                        title: "Confirm Password",
                        placeholder: "Re-enter Password",
                        isSecureField: true
                    ).autocapitalization(.none)
                    
                    if !password.isEmpty && !password.isEmpty {
                        if password == confirmPassword {
                            Image(systemName: "checkmark.circle.fill") .imageScale(.large)
                                .fontWeight(.bold)
                                .foregroundColor(Color(.systemGreen))
                        } else {
                            Image(systemName: "xmark.circle.fill") .imageScale(.large)
                                .fontWeight(.bold)
                                .foregroundColor(Color(.systemRed))
                        }
                    }
                            
                }
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            // Sign In Button
            Button {
                Task {
                    try await viewModel.createUser(withEmail: email, password: password, fullname: fullname)
                }
            } label: {
                Text("Sign Up")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }
            .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            .background(Color(.systemBlue))
            .cornerRadius(10)
            .padding(.top, 24)
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1.0 : 0.5)
            
            Spacer()
            
            Button{
                dismiss() 
            } label: {
                Text("Back to Sign In")
            }
        }
    }
}

// MARK - AuthenticationFormProtocol
extension RegistrationView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
        && !fullname.isEmpty
        && password == confirmPassword
    }
}

#Preview {
    RegistrationView()
}
