//
//  SliderColorView.swift
//  Colorized
//
//  Created by Carlos Garcia Perez on 20/4/24.
//

import SwiftUI

struct SliderColorView: View {
    @State private var sliderValue = Double(126)
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(color)")
                .frame(width: 45, alignment: .leading)
            HStack {
                
                Text("0").foregroundStyle(color)
                Slider(value: $sliderValue, in: 0...255, step: 1)
                    .frame(width: 200)
                    .tint(color)
                Text("255").foregroundStyle(color)
                Text(sliderValue.formatted())
                    .font(.title3)
                    .frame(width: 40, height: 30)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(lineWidth: 1)
                    )
            }
        }
    }
}
#Preview {
    SliderColorView(color: .red)
}
