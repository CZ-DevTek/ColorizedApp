//
//  SliderColorView.swift
//  Colorized
//
//  Created by Carlos Garcia Perez on 20/4/24.
//

import SwiftUI

enum Field: Hashable {
    case textField
}

struct SliderColorView: View {
    @Binding var value: Double
    @State private var textValue: String
    @FocusState private var focusedField: Field?
    let color: Color
    
    init(value: Binding<Double>, color: Color) {
        self._value = value
        self._textValue = State(initialValue: String(Int(value.wrappedValue)))
        self.color = color
    }
    
    var body: some View {
        HStack {
            Text("\(color)")
                .frame(width: 45, alignment: .leading)
            
            HStack {
                Text(lround(value).formatted())
                    .font(.title3)
                    .frame(width: 40, height: 30)
                    .foregroundColor(color)
                
                Slider(value: $value, in: 0...255, step: 1)
                    .frame(width: 200)
                    .tint(color)
                    .onChange(of: value) { oldValue, newValue in
                        if focusedField != .textField {
                            textValue = String(Int(newValue))
                        }
                    }
                TextField("", text: $textValue)
                    .font(.title3)
                    .frame(width: 50, height: 30)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)
                    .focused($focusedField, equals: .textField)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(lineWidth: 1)
                    )
                    .onChange(of: textValue) { newDouble, newValue in
                        if focusedField != .textField {
                            if let newDouble = Double(newValue), (0...255).contains(newDouble) {
                                value = newDouble
                            }
                        }
                    }
                    .onSubmit {
                        focusedField = nil
                        if let newDouble = Double(textValue), (0...255).contains(newDouble) {
                            value = newDouble
                    }
                }
            }
        }
    }
}

#Preview {
    SliderColorView(value: .constant(126), color: .red)
}
