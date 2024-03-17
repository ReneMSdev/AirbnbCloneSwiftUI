//
//  RegistrationViewModel.swift
//  AirbnbSwiftUI
//
//  Created by Rene Salomone on 3/16/24.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    private let service: MockAuthService
    
    init(service: MockAuthService) {
        self.service = service
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async {
        do {
            try await service.createUser(withEmail: email, password: password, fullname: fullname)
        } catch {
            print("DEBUG: Failed to create user with error: \(error.localizedDescription)")
        }
    }
}
