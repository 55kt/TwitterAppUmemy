//
//  CreateTweetView.swift
//  TwitterApp
//
//  Created by Vlad on 3/8/25.
//

import SwiftUI

struct CreateTweetView: View {
    
    //MARK: - Properties
    @State private var text: String = ""
    @Environment(\.dismiss) private var dismiss
    
    //MARK: - Body
    var body: some View {
        VStack {
            HStack {
                //MARK: - Dismiss Button
                Button {
                    dismiss()
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                //MARK: - Post Tweet Button
                Button {
                    //
                } label: {
                    Text("Tweet")
                        .padding()
                }
                .background(Color("bg"))
                .foregroundStyle(.white)
                .clipShape(Capsule())
            }
            
            //MARK: - Field
            MultilineTextField(text: $text)
        }
        .padding()
    }
}

//MARK: - Preview
#Preview {
    CreateTweetView()
}
