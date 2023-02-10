//
//  CoordinatesGrid.swift
//  GeometryShapes
//
//  Created by Mohamed Alwakil on 2023-02-10.
//

import SwiftUI

struct CoordinatesGrid: View {

    let axesColor: Color = .red
    let linesColor: Color = .blue

    var body: some View {

        GeometryReader { geo in
            let frame = geo.frame(in: .local)

            Line(pt1: .init(x: frame.midX, y: frame.minY),
                 pt2: .init(x: frame.midX, y: frame.maxY))
            .stroke(axesColor, lineWidth: 2)


            Line(pt1: .init(x: frame.minX, y: frame.midY),
                 pt2: .init(x: frame.maxX, y: frame.midY))
            .stroke(axesColor, lineWidth: 2)


            ForEach(0...100, id: \.self) { index in

                let shift = CGFloat(index)
                // vertical
                Line(pt1: .init(x: 20 * shift, y: frame.minY),
                     pt2: .init(x: 20 * shift, y: frame.maxY))
                .stroke(linesColor, lineWidth: 0.2)

                Line(pt1: .init(x: 20 * shift, y: frame.midY + 8),
                     pt2: .init(x: 20 * shift, y: frame.midY - 8))
                .stroke(axesColor, lineWidth: 2)

                // Horizontale

                Line(pt1: .init(x: frame.minX, y: 20 * shift),
                     pt2: .init(x: frame.maxX, y: 20 * shift))
                .stroke(linesColor, lineWidth: 0.2)

                Line(pt1: .init(x: frame.midX + 8, y: 20 * shift),
                     pt2: .init(x: frame.midX - 8, y: 20 * shift))
                .stroke(axesColor, lineWidth: 2)
            }
        }
    }
}

struct Line: Shape {
    let pt1: CGPoint
    let pt2: CGPoint

    func path(in rect: CGRect) -> Path {

        Path { path in

            path.move(to: pt1)
            path.addLine(to: pt2)
            path.closeSubpath()
        }
    }
}

struct CoordinatesGrid_Previews: PreviewProvider {
    static var previews: some View {
        CoordinatesGrid()
    }
}
