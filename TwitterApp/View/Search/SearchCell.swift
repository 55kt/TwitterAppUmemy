//
//  SearchCell.swift
//  TwitterApp
//
//  Created by Vlad on 18/8/25.
//

import SwiftUI

struct SearchCell: View {
    
    var tag = ""
    var tweets = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .fontWeight(.heavy)
            Text(tweets + "Tweets")
                .fontWeight(.light)
        }
    }
}

#Preview {
    SearchCell()
}
