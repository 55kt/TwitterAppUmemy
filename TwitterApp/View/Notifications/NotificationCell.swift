//
//  NotificationCell.swift
//  TwitterApp
//
//  Created by Vlad on 18/8/25.
//

import SwiftUI

struct NotificationCell: View {
    
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundStyle(.gray)
                .opacity(0.3)
            
            HStack(alignment: .top) {
                Image(systemName: "person.fill")
                    .resizable()
                    .foregroundStyle(.blue)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                VStack(alignment: .leading, spacing: 5) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 36, height: 36)
                        .cornerRadius(18)
                    
                    Text("Cem ")
                        .fontWeight(.bold)
                        .foregroundStyle(.primary)
                    
                    +
                    
                    Text("followed you")
                        .foregroundStyle(.black)
                }
                
                Spacer(minLength: 0)
            }
            .padding(.leading, 30)
        }
    }
}

#Preview {
    NotificationCell()
}
