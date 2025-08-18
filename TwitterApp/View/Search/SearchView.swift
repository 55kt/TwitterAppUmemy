//
//  SearchView.swift
//  TwitterApp
//
//  Created by Vlad on 3/8/25.
//

import SwiftUI

struct SearchView: View {
    
    @State var text = ""
    @State var isEditing = false
    
    var body: some View {
        VStack {
            
            SearchBar(text: $text, isEditing: $isEditing)
                .padding(.horizontal)
            
            if !isEditing {
                List(0..<9) { i in
                    SearchCell(tag: "Tag", tweets: String(i))
                }
                .listStyle(.plain)
            } else {
                List(0..<9) { _ in
                    SearchUserCell()
                }
                .listStyle(.plain)
            }
        }
    }
}

#Preview {
    SearchView()
}
