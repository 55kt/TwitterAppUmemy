//
//  Extensions.swift
//  TwitterApp
//
//  Created by Vlad on 18/8/25.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
