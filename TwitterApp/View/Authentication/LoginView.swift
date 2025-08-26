//
//  LoginView.swift
//  TwitterApp
//
//  Created by Vlad on 26/8/25.
//

import SwiftUI

struct LoginView: View {
    //MARK: - Properties
    @State private var email: String = ""
    @State private var password: String = ""
    @State var emailDone: Bool = false
    
    @Environment(\.dismiss) var dismiss
    
    //MARK: - Body
    var body: some View {
        VStack {
            VStack {
                //MARK: - Header
                AuthenticationHeaderView()
                
                //MARK: - Prompt Text
                Text(emailDone ? "Enter your password" : "To get started first enter your phone number or email or @username")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.top)
                
                if !emailDone {
                    CustomAuthTextField(placeholder: "Phone, email or @username", text: $email)
                } else {
                    SecureAuthTextField(placeholder: "Password", text: $password)
                }
            }
            
            Spacer(minLength: 0)
            
            //MARK: - Bottom Section
            VStack {
                Button {
                    if !email.isEmpty {
                        self.emailDone.toggle()
                    }
                } label: {
                    Capsule()
                        .frame(width: 360, height: 40, alignment: .center)
                        .foregroundStyle(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                        .overlay {
                            Text("Next")
                                .foregroundStyle(.white)
                        }
                }
                .padding(.bottom, 4)
                
                Text("Forgot Password?")
                    .foregroundStyle(.blue)

            }
        }
    }
}

#Preview {
    LoginView()
}
