//
//  LabelColorView.swift
//  Colorized
//
//  Created by Carlos Garcia Perez on 20/4/24.
//

import SwiftUI

struct LabelColorView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.black)
            .frame(width: 360, height: 180, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }

#Preview {
    LabelColorView()
}
