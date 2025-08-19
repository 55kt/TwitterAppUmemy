//
//  MainView.swift
//  TwitterApp
//
//  Created by Vlad on 19/8/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            TopBar()
            Home()
        }
    }
}

#Preview {
    MainView()
}
