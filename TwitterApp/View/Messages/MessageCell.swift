//
//  MessageCell.swift
//  TwitterApp
//
//  Created by Vlad on 18/8/25.
//

import SwiftUI

struct MessageCell: View {
    //MARK: - Properties
    @State var width: CGFloat = UIScreen.main.bounds.width
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: nil) {
            Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundStyle(.gray)
                .opacity(0.3)
            
            HStack {
                //MARK: - Profile Image
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        //MARK: - Profile Name
                        Text("Mister Bean")
                            .fontWeight(.bold)
                            .foregroundStyle(.primary)
                        
                        //MARK: - Profile Nickname
                        Text("@mr_bean")
                            .foregroundStyle(.gray)
                        
                        Spacer(minLength: 0)
                        
                        //MARK: - Date
                        Text("6/20/21")
                            .foregroundStyle(.gray)
                            .padding(.trailing)
                    }
                    //MARK: - Message
                    Text("Hey, how are you ?")
                        .foregroundStyle(.gray)
                    
                    Spacer()
                    
                    
                }
            }
            .padding(.top, 2)
        }
        .frame(width: width, height: 84)
    }
}

//MARK: - Preview
#Preview {
    MessageCell()
}
