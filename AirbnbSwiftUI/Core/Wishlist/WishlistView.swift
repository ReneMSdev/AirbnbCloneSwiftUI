//
//  WishlistView.swift
//  AirbnbSwiftUI
//
//  Created by Rene Salomone on 3/15/24.
//

import SwiftUI

struct WishlistView: View {
    @State private var showLogin = false
    
    var body: some View {
        NavigationStack {
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
            .padding()
            .navigationTitle("Wishlists")
        }
        .sheet(isPresented: $showLogin, content: {
            LoginView()
        })
    }
}

#Preview {
    WishlistView()
}
