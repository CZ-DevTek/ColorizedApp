//
//  ContentView.swift
//  Colorized
//
//  Created by Carlos Garcia Perez on 20/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = 126.0
    @State private var greenValue = 126.0
    @State private var blueValue = 126.0
    

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
