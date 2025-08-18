//
//  Feed.swift
//  TwitterApp
//
//  Created by Vlad on 3/8/25.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 18) {
                TweetCellView(tweet: "Hello Im a proffessor in apple  ?", tweetImage: "post")
                Divider()
                
                ForEach(1...20, id: \.self) { _ in
                    TweetCellView(tweet: loremIpsum)
                    Divider()
                }
            }
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        }
    }
}

#Preview {
    Feed()
}
