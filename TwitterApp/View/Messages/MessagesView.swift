//
//  MessagesView.swift
//  TwitterApp
//
//  Created by Vlad on 3/8/25.
//

import SwiftUI

struct MessagesView: View {
    
    //MARK: - Body
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<9) { _ in
                    MessageCell()
                }
            }
        }
    }
}

//MARK: - Preview
#Preview {
    MessagesView()
}
