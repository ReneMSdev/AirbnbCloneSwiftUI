//
//  PrimaryButtonModifier.swift
//  AirbnbSwiftUI
//
//  Created by Rene Salomone on 3/16/24.
//

import SwiftUI

struct PrimaryButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 350, height: 44)
            .background(Color(.systemPink))
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
