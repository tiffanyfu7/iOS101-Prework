//
//  BookNookApp.swift
//  BookNook
//
//  Created by Tiffany Lin Fu on 1/5/25.
//

import SwiftUI
import Firebase

@main
struct BookNookApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
