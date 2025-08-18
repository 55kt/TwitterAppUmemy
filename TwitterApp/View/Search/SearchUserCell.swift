//
//  SearchUserCell.swift
//  TwitterApp
//
//  Created by Vlad on 18/8/25.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .clipShape(.circle)
            
            VStack(alignment: .leading) {
                Text("Cem")
                    .fontWeight(.heavy)
                Text("@cem_salta")
            }
            
            Spacer(minLength: 0)
        }
    }
}

#Preview {
    SearchUserCell()
}
