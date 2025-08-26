//
//  NotificationCell.swift
//  TwitterApp
//
//  Created by Vlad on 18/8/25.
//

import SwiftUI

struct NotificationCell: View {
    //MARK: - Properties
    @State var width: CGFloat = UIScreen.main.bounds.width
    
    //MARK: - Body
    var body: some View {
        VStack {
            //MARK: - Divider Custom Line
            Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundStyle(.gray)
                .opacity(0.3)
            
            HStack(alignment: .top) {
                //MARK: - Default Profile Icon
                Image(systemName: "person.fill")
                    .resizable()
                    .foregroundStyle(.blue)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                //MARK: - Profile Image
                VStack(alignment: .leading, spacing: 5) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 36, height: 36)
                        .cornerRadius(18)
                    
                    //MARK: - Profile Name
                    Text("Mister Bean ")
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

//MARK: - Preview
#Preview {
    NotificationCell()
}
