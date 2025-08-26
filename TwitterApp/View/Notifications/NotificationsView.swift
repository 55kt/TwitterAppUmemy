//
//  NotificationsView.swift
//  TwitterApp
//
//  Created by Vlad on 3/8/25.
//

import SwiftUI

struct NotificationsView: View {
    //MARK: - Body
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

//MARK: - Preview
#Preview {
    NotificationsView()
}
