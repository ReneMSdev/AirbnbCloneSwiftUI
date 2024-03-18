//
//  AuthServiceProtocol.swift
//  AirbnbSwiftUI
//
//  Created by Rene Salomone on 3/17/24.
//

import Foundation

protocol AuthServiceProtocol {
    func login(withEmail email: String, password: String) async throws -> String?
    func createUser(withEmail email: String, password: String, fullname: String) async throws -> String?
    func signout()
}
