//
//  LoginViewModel.swift
//  AirbnbSwiftUI
//
//  Created by Rene Salomone on 3/16/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    private let service: MockAuthService
    
    init(service: MockAuthService) {
        self.service = service
    }
    
    func login(withEmail email: String, password: String) async {
        do {
            try await service.login(withEmail: email, password: password)
        } catch {
            print("DEBUG: Failed to login with error: \(error.localizedDescription)")
        }
    }
}
