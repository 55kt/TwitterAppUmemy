//
//  NotificationsView.swift
//  TwitterApp
//
//  Created by Vlad on 3/8/25.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<9) { _ in
                    NotificationCell()
                }
             }
        }
    }
}

#Preview {
    NotificationsView()
}
