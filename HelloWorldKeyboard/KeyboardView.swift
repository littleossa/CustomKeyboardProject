//
//  KeyboardView.swift
//  HelloWorldKeyboard
//

import SwiftUI
import UIKit

struct KeyboardView: View {
    
    let needsInputModeSwitchKey: Bool
    let nextKeyboardAction: Selector
    let inputTextAction: (String) -> Void
    let deleteTextAction: () -> Void
    
    private let helloWorldText = "Hello, world!"
    
    var body: some View {
        
        HStack {
            
            Group {
                
                // Next Keybaord
                if needsInputModeSwitchKey {
                    
                    NextKeyboardButton(systemName: "globe",
                                       action: nextKeyboardAction)
                    .frame(width: 44, height: 44)
                }
                
                // Input Text
                Button(helloWorldText) {
                    inputTextAction(helloWorldText)
                }
                .frame(height: 44)
                .padding(.horizontal)
                
                // Delete Text
                Button {
                    deleteTextAction()
                } label: {
                    Image(systemName: "xmark")
                        .frame(width: 44, height: 44)
                }
            }
            .background(Color(uiColor: .systemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .shadow(radius: 8)
        }
        .foregroundColor(Color(uiColor: .label))
        .frame(height: 160)
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView(needsInputModeSwitchKey: true,
                     nextKeyboardAction: Selector(("dummy"))) { _ in } deleteTextAction: {}
    }
}
