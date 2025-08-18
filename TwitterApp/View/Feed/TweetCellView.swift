//
//  TweetCellView.swift
//  TwitterApp
//
//  Created by Vlad on 4/8/25.
//

import SwiftUI

struct TweetCellView: View {
    
    var tweet: String
    var tweetImage: String?
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 10) {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 10) {
                    (
                        Text("Cem ")
                            .fontWeight(.bold)
                            .foregroundStyle(.primary)
                        +
                        Text("@cem_salta")
                            .foregroundStyle(.gray)
                    )
                    
                    Text(tweet)
                        .frame(maxHeight: 100, alignment: .top)
                    
                    if let image = tweetImage {
                        GeometryReader { proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width, height: 250)
                                .cornerRadius(15)
                        }
                        .frame(height: 250)
                    }

                }
            }
            
            // Cell Button
            
            HStack(spacing: 50) {
                Button {
                    //
                } label: {
                    Image("Comments")
                        .resizable()
                        .frame(width: 18, height: 18)
                        .foregroundStyle(.gray)
                }
                
                Button {
                    //
                } label: {
                    Image("Retweet")
                        .resizable()
                        .frame(width: 18, height: 18)
                        .foregroundStyle(.gray)
                }
                
                Button {
                    //
                } label: {
                    Image("love")
                        .resizable()
                        .frame(width: 18, height: 18)
                        .foregroundStyle(.gray)
                }
                
                Button {
                    //
                } label: {
                    Image("upload")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 18, height: 18)
                        .foregroundStyle(.gray)
                }


            }
            .padding(.top, 4)
        }
    }
}

#Preview {
    TweetCellView(tweet: loremIpsum)
}

 var loremIpsum: String = "Nunc vitae urna vel tellus ornare consectetur. Integer sollicitudin vitae tortor in interdum. Integer ullamcorper faucibus purus, at bibendum purus aliquet iaculis. In in massa nunc. Aliquam in quam eu tortor rutrum tristique. Maecenas molestie dignissim nulla, nec suscipit risus egestas at. Mauris rutrum suscipit massa vitae egestas."
