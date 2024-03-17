//
//  ProfileView.swift
//  AirbnbSwiftUI
//
//  Created by Rene Salomone on 3/15/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var showLogin = false
    
    var body: some View {
        VStack {
            // profile login view
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                    .fontWeight(.semibold)
                    
                    Text("Log in to start planning your next trip")
                }
                
                // login button
                Button {
                    showLogin.toggle()
                } label: {
                    Text("Login")
                        .modifier(PrimaryButtonModifier())
                }
                
                HStack {
                    Text("Don't have an account?")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            // profile options
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding(.vertical)
        }
        .sheet(isPresented: $showLogin, content: {
            LoginView()
        })
        .padding()
    }
}

#Preview {
    ProfileView()
}
