//
//  NextKeyboardButton.swift
//  HelloWorldKeyboard
//

import SwiftUI
import UIKit

struct NextKeyboardButton: View {
    let systemName: String
    let action: Selector
    
    var body: some View {
        Image(systemName: systemName)
            .overlay {
                NextKeyboardButtonOverlay(action: action)
            }
    }
}
        
struct NextKeyboardButtonOverlay: UIViewRepresentable {
    let action: Selector
    
    func makeUIView(context: Context) -> UIButton {
        // UIButtonを生成し、セレクターをactionに設定
        let button = UIButton()
        button.addTarget(nil,
                         action: action,
                         for: .allTouchEvents)
        return button
    }
    
    func updateUIView(_ button: UIButton, context: Context) {}
}

struct NextKeyboardButton_Previews: PreviewProvider {
    static var previews: some View {
        NextKeyboardButton(systemName: "globe",
                           action: Selector(("dummy")))
    }
}

