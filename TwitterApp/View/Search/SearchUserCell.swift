//
//  SearchUserCell.swift
//  TwitterApp
//
//  Created by Vlad on 18/8/25.
//

import SwiftUI

struct SearchUserCell: View {
    //MARK: - Body
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .clipShape(.circle)
            
            VStack(alignment: .leading) {
                Text("Mister Bean")
                    .fontWeight(.heavy)
                Text("@mr_bean")
            }
            
            Spacer(minLength: 0)
        }
    }
}

//MARK: - preview
#Preview {
    SearchUserCell()
}
