//
//  MultilineTextField.swift
//  TwitterApp
//
//  Created by Vlad on 3/8/25.
//

import Foundation
import SwiftUI

struct MultilineTextField: UIViewRepresentable {
    
    func makeCoordinator() -> MultilineTextField.Coordinator {
        return MultilineTextField.Coordinator(parrent1: self)
    }
    
    @Binding var text: String
    
    func makeUIView(context: Context) -> some UIView {
        let text = UITextView()
        text.isEditable = true
        text.text = "Type something"
        text.isUserInteractionEnabled = true
        text.textColor = .gray
        text.font = .systemFont(ofSize: 20)
        text.delegate = context.coordinator
        return text
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        // code
    }
    
    class Coordinator: NSObject, UITextViewDelegate {
        var parent: MultilineTextField
        
        init(parrent1: MultilineTextField) {
            parent = parrent1
        }
        
        func textViewDidBeginEditing(_ textView: UITextView) {
            textView.text = ""
            textView.textColor = .black
        }
        
        func textViewDidChange(_ textView: UITextView) {
            self.parent.text = textView.text
        }
    }
}
