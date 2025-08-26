//
//  SearchView.swift
//  TwitterApp
//
//  Created by Vlad on 3/8/25.
//

import SwiftUI

struct SearchView: View {
    //MARK: - Properties
    @State var text: String = ""
    @State var isEditing: Bool = false
    
    //MARK: - Body
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

//MARK: - Preview
#Preview {
    SearchView()
}
