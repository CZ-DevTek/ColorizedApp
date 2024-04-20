//
//  ContentView.swift
//  Colorized
//
//  Created by Carlos Garcia Perez on 20/4/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            LabelColorView()
                .padding()
            VStack {
                Text("Color Selector")
                SliderColorView(color: .red)
                SliderColorView(color: .green)
                SliderColorView(color: .blue)
            }
        }
        Spacer()
    }
}
#Preview {
    ContentView()
}
