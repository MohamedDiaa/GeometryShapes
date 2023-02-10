//
//  SineWave.swift
//  GeometryShapes
//
//  Created by Mohamed Alwakil on 2023-02-10.
//

import SwiftUI
import Numerics

// refrence  https://stackoverflow.com/questions/40230312/how-do-i-draw-a-cosine-or-sine-curve-in-swift

struct SineWave: View {

    let graphWidth: CGFloat = 0.96  // Graph is 80% of the width of the view
    let amplitude: CGFloat = 0.3

    var body: some View {

        GeometryReader { geo in

            let frame = geo.frame(in: .local)

            ZStack {

                CoordinatesGrid()

                let width = frame.width
                let height = frame.height

                let origin: CGPoint = .init(x: width * (1 - graphWidth) / 2,
                                            y: height * 0.50)


                Path { path in
                    path.move(to: origin)

                    for angle in stride(from: 5.0, through: 360.0, by: 5.0) {
                        let x = origin.x + CGFloat(angle/360.0) * width * graphWidth

                        let radianAngle = Angle(degrees: angle).radians
                        let y = origin.y - CGFloat(sin(radianAngle)) * height * amplitude
                        path.addLine(to: .init(x: x, y: y))
                    }
                }
                .stroke(.green, lineWidth: 3)
            }
        }
    }
}

struct SineWave_Previews: PreviewProvider {
    static var previews: some View {
        SineWave()
    }
}
