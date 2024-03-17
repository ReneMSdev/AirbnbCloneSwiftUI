//
//  MockAuthService.swift
//  AirbnbSwiftUI
//
//  Created by Rene Salomone on 3/17/24.
//

import Foundation

struct MockAuthService {
    func login(withEmail email: String, password: String) async throws -> String? {
        return NSUUID().uuidString
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) -> String? {
        return NSUUID().uuidString
    }
    
    func signout() {
        
    }
}
