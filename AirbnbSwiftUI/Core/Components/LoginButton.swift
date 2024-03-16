//
//  LoginButton.swift
//  AirbnbSwiftUI
//
//  Created by Rene Salomone on 3/15/24.
//

import SwiftUI

struct LoginButton: View {
    var body: some View {
        Button {
            print("Login")
        } label: {
            Text("Login")
                .modifier(PrimaryButtonModifier())
        }
    }
}

#Preview {
    LoginButton()
}
