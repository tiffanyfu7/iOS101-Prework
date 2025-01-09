//
//  AuthViewModel.swift
//  BookNook
//
//  Created by Tiffany Lin Fu on 1/9/25.
//

import Foundation
import Firebase
import FirebaseAuth


class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        
    }
    
    func signIn (withEmail email: String, password: String) async throws {
        print("Sign In")
    }
    
    func createUser (withEmail email: String, password: String, fullname: String) async throws {
        print("Creating User")
    }
    
    func signOut() {
        
    }
    
    func deleteAccount() {
        
    }
    
    func fetchUser() async {
        
    }
}
