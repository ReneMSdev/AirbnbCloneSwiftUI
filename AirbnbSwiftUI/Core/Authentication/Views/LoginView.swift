//
//  LoginView.swift
//  AirbnbSwiftUI
//
//  Created by Rene Salomone on 3/16/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @StateObject var viewModel = LoginViewModel(service: MockAuthService())
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image(.airbnbAppIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                VStack {
                    TextField("Enter your email", text: $email)
                        .modifier(PrimaryTextFieldModifier())
                    
                    SecureField("Enter your password", text: $password)
                        .modifier(PrimaryTextFieldModifier())
                }
                
                NavigationLink {
                    
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                // login button
                Button {
                    Task {
                        await viewModel.login(
                            withEmail: email,
                            password: password)
                    }
                } label: {
                    Text("Login")
                        .modifier(PrimaryButtonModifier())
                }
                    .padding(.vertical)
                    .disabled(!formIsValid)
                    .opacity(formIsValid ? 1.0 : 0.7)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 4) {
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical)
            }
        }
    }
}

//MARK: - AuthenticationFormProtocol

extension LoginView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty &&
        email.contains("@") &&
        !password.isEmpty &&
        password.count > 5
        // can more conditions for password
    }
}

#Preview {
    LoginView()
}
