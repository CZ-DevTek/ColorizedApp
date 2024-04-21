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

    var body: some View {
        
        VStack {
            LabelColorView(redValue: redValue, greenValue: greenValue, blueValue: blueValue)
                .padding()
            VStack {
                Text("Color Selector")
                SliderColorView(value: $redValue, color: .red)
                SliderColorView(value: $greenValue, color: .green)
                SliderColorView(value: $blueValue, color: .blue)
            }
        }
        Spacer()
    }
}
#Preview {
    ContentView()
}
