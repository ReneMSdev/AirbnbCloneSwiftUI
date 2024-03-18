//
//  WishlistLoginView.swift
//  AirbnbSwiftUI
//
//  Created by Rene Salomone on 3/18/24.
//

import SwiftUI

struct WishlistLoginView: View {
    @Binding var showLogin: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Log in to view your wishlists")
                    .font(.headline)
                
                Text("You can create, view or edit wishlists once you've logged in")
                    .font(.footnote)
            }
            
            // login button
            Button {
                showLogin.toggle()
            } label: {
                Text("Login")
                    .modifier(PrimaryButtonModifier())
            }
            
            Spacer()
        }
    }
}

#Preview {
    WishlistLoginView(showLogin: .constant(false))
}
