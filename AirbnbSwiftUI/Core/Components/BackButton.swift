//
//  BackButton.swift
//  AirbnbSwiftUI
//
//  Created by Rene Salomone on 3/16/24.
//

import SwiftUI

struct BackButton: View {
    // environment trigger for back button
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        Button {
            dismiss()
        } label: {
            Image(systemName: "chevron.left")
                .foregroundStyle(.black)
                .background(
                    Circle()
                        .fill(.white)
                        .frame(width: 32, height: 32)
                        .shadow(radius: 4)
                )
                .padding(.top, 40)
                .padding(.leading, 32)
        }
        .padding()
        .contentShape(Rectangle())
    }
}


#Preview {
    BackButton()
}
