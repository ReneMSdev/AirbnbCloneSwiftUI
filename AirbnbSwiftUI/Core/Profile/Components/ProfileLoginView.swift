//
//  ProfileLoginView.swift
//  AirbnbSwiftUI
//
//  Created by Rene Salomone on 3/18/24.
//

import SwiftUI

struct ProfileLoginView: View {
    @Binding var showLogin: Bool
    
    var body: some View {
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
    }
}

#Preview {
    ProfileLoginView(showLogin: .constant(false))
}
