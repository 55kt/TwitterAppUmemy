//
//  CustomAuthTextField.swift
//  TwitterApp
//
//  Created by Vlad on 26/8/25.
//

import SwiftUI

struct CustomAuthTextField: View {
    
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundStyle(.gray)
                }
                
                TextField("", text: $text)
                    .frame(height: 45)
                    .foregroundStyle(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
            }
            Rectangle()
                .frame(height: 1, alignment: .center)
                .foregroundStyle(.gray)
                .padding(.top, -2)
        }
        .padding(.horizontal)
    }
}

#Preview {
    CustomAuthTextField(placeholder: "", text: .constant(""))
}
