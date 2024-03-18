//
//  AirbnbSwiftUIApp.swift
//  AirbnbSwiftUI
//
//  Created by Rene Salomone on 3/15/24.
//

import SwiftUI

@main
struct AirbnbSwiftUIApp: App {
    let authManager = AuthManager(service: MockAuthService())
    
    var body: some Scene {
        WindowGroup {
            ContentView(authManager: authManager)
        }
    }
}
