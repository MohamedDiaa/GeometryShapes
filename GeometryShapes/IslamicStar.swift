//
//  IslamicStar.swift
//  GeometryShapes
//
//  Created by Mohamed Alwakil on 2023-02-07.
//

// https://en.wikipedia.org/wiki/Rub_el_Hizb
// Islamic Star also called Rub el Hizb

import SwiftUI

struct IslamicStar: View {

    let stroke: Color
    let length: CGFloat
    let lineWidth: CGFloat

    init(stroke: Color = .green, length: CGFloat = 200, lineWidth: CGFloat = 3) {
        self.stroke = stroke
        self.length = length
        self.lineWidth = lineWidth
    }

    var body: some View {
        ZStack {
            Rectangle()
                .stroke(stroke, lineWidth: lineWidth)
                .frame(width: length, height: length)

            Rectangle()
                .stroke(stroke, lineWidth: lineWidth)
                .frame(width: length, height: length)
                .rotationEffect(Angle(radians: .pi / 4))

            Circle()
                .stroke(stroke, lineWidth: lineWidth)
                .frame(width: length / 5)
        }
    }
}

struct IslamicStar_Previews: PreviewProvider {
    static var previews: some View {
        IslamicStar()
    }
}
