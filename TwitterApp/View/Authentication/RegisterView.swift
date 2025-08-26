//
//  RegisterView.swift
//  TwitterApp
//
//  Created by Vlad on 26/8/25.
//

import SwiftUI

struct RegisterView: View {
    //MARK: - Properties
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @Environment(\.dismiss) var dismiss
    
    //MARK: - Body
    var body: some View {
        VStack {
            AuthenticationHeaderView()
            
            // Header Prompt
            Text("Create your account")
                .font(.title)
                .bold()
                .padding(.top, 35)
            
            //MARK: - Register Fields
            VStack(alignment: .leading, spacing: nil) {
                CustomAuthTextField(placeholder: "Name", text: $name)
                CustomAuthTextField(placeholder: "Phone number or Email", text: $email)
                SecureAuthTextField(placeholder: "Password", text: $password)
            }
            
            Spacer(minLength: 0)
            
            //MARK: - Bottom Section
            VStack {
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(.gray)
                
                HStack {
                    Spacer()
                    
                    //MARK: - Next Button
                    Button {
                        //
                    } label: {
                        Capsule()
                            .frame(width: 60, height: 30, alignment: .center)
                            .foregroundStyle(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                            .overlay {
                                Text("Next")
                                    .foregroundStyle(.white)
                            }
                    }

                }
                .padding(.trailing, 24)
            }
        }
    }
}

//MARK: - Preview
#Preview {
    RegisterView()
}
