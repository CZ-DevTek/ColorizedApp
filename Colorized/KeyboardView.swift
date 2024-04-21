//
//  KeyboardView.swift
//  Colorized
//
//  Created by Carlos Garcia Perez on 21/4/24.
//

import SwiftUI

struct CustomKeyboard: ViewModifier {
    let onDone: () -> Void
    @State private var isToolbarVisible: Bool = false
    
    func body(content: Content) -> some View {
        content
            .toolbar {
                if isToolbarVisible {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            onDone()
                            isToolbarVisible = false
                        }
                    }
                }
            }
            .onTapGesture {
                isToolbarVisible = true
            }
    }
}

extension View {
    func withCustomKeyboard(onDone: @escaping () -> Void) -> some View {
        self.modifier(CustomKeyboard(onDone: onDone))
    }
}


