//
//  RegisterView.swift
//  TwitterApp
//
//  Created by Vlad on 26/8/25.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Text("Cancel")
                            .foregroundStyle(.blue)
                    }
                    Spacer()
                }
                .padding(.horizontal)
                
                Image("Twitter")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 20, height: 20)
            }
            
            Text("Create your account")
                .font(.title)
                .bold()
                .padding(.top, 35)
            
            VStack(alignment: .leading, spacing: nil) {
                CustomAuthTextField(placeholder: "Name", text: $name)
                CustomAuthTextField(placeholder: "Phone number or Email", text: $email)
                SecureAuthTextField(placeholder: "Password", text: $password)
            }
            
            Spacer(minLength: 0)
            
            VStack {
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(.gray)
                
                HStack {
                    Spacer()
                    
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

#Preview {
    RegisterView()
}
