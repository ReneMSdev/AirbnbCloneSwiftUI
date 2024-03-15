//
//  DeveloperPreview.swift
//  AirbnbSwiftUI
//
//  Created by Rene Salomone on 3/15/24.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
    .init(
        id: NSUUID().uuidString,
        ownerUid: NSUUID().uuidString,
        ownerName: "John Smith",
        ownerImageUrl: "male-profile-photo",
        numberOfBedrooms: 4,
        numberOfBathrooms: 3,
        numberOfGuests: 4,
        numberOfBeds: 4,
        pricePerNight: 567,
        latitude: 25.7850,
        longitude: -80.1936,
        imageURLs: ["listing-1", "listing-7", "listing-3", "listing-4"],
        address: "124 Main St",
        city: "Miami",
        state: "Florida",
        title: "Miami Villa",
        rating: 4.85,
        features: [.selfCheckIn, .superHost],
        amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
        type: .villa
    ),
    .init(
        id: NSUUID().uuidString,
        ownerUid: NSUUID().uuidString,
        ownerName: "Mark Thompson",
        ownerImageUrl: "male-profile-photo",
        numberOfBedrooms: 2,
        numberOfBathrooms: 2,
        numberOfGuests: 3,
        numberOfBeds: 2,
        pricePerNight: 350,
        latitude: 25.7706,
        longitude: -80.1340,
        imageURLs: ["listing-4", "listing-6", "listing-3", "listing-2"],
        address: "1226 Ocean View Dr",
        city: "Miami",
        state: "Florida",
        title: "Miami Beach House",
        rating: 4.88,
        features: [.selfCheckIn, .superHost],
        amenities: [.wifi, .alarmSystem, .tv, .kitchen, .office],
        type: .villa
    ),
    .init(
        id: NSUUID().uuidString,
        ownerUid: NSUUID().uuidString,
        ownerName: "Steve Johnson",
        ownerImageUrl: "male-profile-photo",
        numberOfBedrooms: 3,
        numberOfBathrooms: 3,
        numberOfGuests: 4,
        numberOfBeds: 3,
        pricePerNight: 460,
        latitude: 25.7650,
        longitude: -80.1936,
        imageURLs: ["listing-2", "listing-1", "listing-3", "listing-4"],
        address: "1237 Market St",
        city: "Miami",
        state: "Florida",
        title: "Beautiful Miami apartment in downtown area",
        rating: 4.23,
        features: [.selfCheckIn, .superHost],
        amenities: [.wifi, .alarmSystem, .balcony,],
        type: .apartment
    ),
    .init(
        id: NSUUID().uuidString,
        ownerUid: NSUUID().uuidString,
        ownerName: "Harry Styles",
        ownerImageUrl: "male-profile-photo",
        numberOfBedrooms: 4,
        numberOfBathrooms: 3,
        numberOfGuests: 4,
        numberOfBeds: 4,
        pricePerNight: 600,
        latitude: 34.2,
        longitude: -118.0426, 
        imageURLs: ["listing-5", "listing-6", "listing-7", "listing-8"],
        address: "124 Ocean Dr",
        city: "Malibu",
        state: "California",
        title: "Beautiful Malibu home in near the beach",
        rating: 4.85,
        features: [.selfCheckIn, .superHost],
        amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
        type: .villa
    ),
    .init(
        id: NSUUID().uuidString,
        ownerUid: NSUUID().uuidString,
        ownerName: "Timothy Chalamet",
        ownerImageUrl: "male-profile-photo",
        numberOfBedrooms: 4,
        numberOfBathrooms: 3,
        numberOfGuests: 4,
        numberOfBeds: 4,
        pricePerNight: 763,
        latitude: 34.1,
        longitude: -118.1426,
        imageURLs: ["listing-8", "listing-7", "listing-6", "listing-5"],
        address: "124 Dope View Dr",
        city: "Los Angeles",
        state: "California",
        title: "Beautiful LA home in the Hollywood Hills",
        rating: 4.85,
        features: [.selfCheckIn, .superHost],
        amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
        type: .villa
    ),
    ]
}
