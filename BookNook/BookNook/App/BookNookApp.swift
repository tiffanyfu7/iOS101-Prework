//
//  BookNookApp.swift
//  BookNook
//
//  Created by Tiffany Lin Fu on 1/5/25.
//

import SwiftUI

@main
struct BookNookApp: App {
    @StateObject var viewModel = AuthViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
