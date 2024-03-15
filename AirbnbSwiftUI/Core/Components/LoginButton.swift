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
            print("Log in")
        } label: {
            Text("Log in")
                .foregroundStyle(.white)
                .fontWeight(.semibold)
                .font(.subheadline)
                .frame(width: 360, height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    LoginButton()
}
