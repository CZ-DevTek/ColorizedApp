//
//  LabelColorView.swift
//  Colorized
//
//  Created by Carlos Garcia Perez on 20/4/24.
//

import SwiftUI

struct LabelColorView: View {
    
    var redValue: Double
    var greenValue: Double
    var blueValue: Double
    
    var body: some View {
        let labelColor = Color(
            red: redValue / 255,
            green: greenValue / 255,
            blue: blueValue / 255
        )
        Rectangle()
            .foregroundColor(labelColor)
            .frame(width: 360, height: 180, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 4)
            )
    }
}

#Preview {
    LabelColorView(redValue: 126.0, greenValue: 126, blueValue: 126)
}
