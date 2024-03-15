//
//  ExploreService.swift
//  AirbnbSwiftUI
//
//  Created by Rene Salomone on 3/15/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
