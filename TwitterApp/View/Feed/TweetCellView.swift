//
//  TweetCellView.swift
//  TwitterApp
//
//  Created by Vlad on 4/8/25.
//

import SwiftUI

struct TweetCellView: View {
    //MARK: - Properties
    var tweet: String
    var tweetImage: String?
    
    //MARK: - Body
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 10) {
                //MARK: - Profile Image
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                //MARK: - Profile Name $ @tag
                VStack(alignment: .leading, spacing: 10) {
                    (
                        Text("Mister Bean ")
                            .fontWeight(.bold)
                            .foregroundStyle(.primary)
                        +
                        Text("@mr_bean")
                            .foregroundStyle(.gray)
                    )
                    
                    Text(tweet)
                        .frame(maxHeight: 100, alignment: .top)
                    
                    //MARK: - If tweet have any image
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
            
            //MARK: - Cell Buttons
            HStack(spacing: 50) {
                TweetCellButton(image: "Comments") {
                    //
                }
                
                TweetCellButton(image: "Retweet") {
                    //
                }
                
                TweetCellButton(image: "love") {
                    //
                }
                
                TweetCellButton(image: "upload") {
                    //
                }
            }
            .padding(.top, 4)
        }
    }
    //MARK: - Methods
    private struct TweetCellButton: View {
        var image: String
        var action: () -> Void
        
        var body: some View {
            Button {
                action()
            } label: {
                Image(image)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.gray)
            }

        }
    }
}

//MARK: - Preview
#Preview {
    TweetCellView(tweet: loremIpsum)
}

//MARK: - Tweet text placeholder ( Delete later ) !!!!!!!!
 var loremIpsum: String = "Nunc vitae urna vel tellus ornare consectetur. Integer sollicitudin vitae tortor in interdum. Integer ullamcorper faucibus purus, at bibendum purus aliquet iaculis. In in massa nunc. Aliquam in quam eu tortor rutrum tristique. Maecenas molestie dignissim nulla, nec suscipit risus egestas at. Mauris rutrum suscipit massa vitae egestas."
