//
//  ContentView.swift
//  Colorized
//
//  Created by Carlos Garcia Perez on 20/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    @FocusState private var focusedField: Field?
    
    var body: some View {
        
        VStack {
            LabelColorView(redValue: redValue, greenValue: greenValue, blueValue: blueValue)
            
            Text("Color Selector")
            SliderColorView(value: $redValue, color: .red)
                .focused($focusedField, equals: .textField)
            
            SliderColorView(value: $greenValue, color: .green)
                .focused($focusedField, equals: .textField)
            
            SliderColorView(value: $blueValue, color: .blue)
                .focused($focusedField, equals: .textField)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
