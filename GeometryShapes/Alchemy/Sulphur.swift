//
//  Sulphur.swift
//  GeometryShapes
//
//  Created by Mohamed Alwakil on 2023-02-08.
//

import SwiftUI

struct Sulphur: View {

    let color: Color

    var body: some View {

        ZStack {
            GeometryReader { geo in

                let frame = geo.frame(in: .local)
                let side = min(frame.width, frame.height) / 2

                let rect = CGRect(
                    origin: .init(x: frame.midX - (side / 2),
                                  y: frame.midY - (side / 2)),
                    size: CGSize(width: side, height: side)
                )


                ZStack {

                    Path { path in
                        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
                        path.addLines([
                            .init(x: rect.minX, y: rect.maxY),
                            .init(x: rect.maxX, y: rect.maxY),
                            .init(x: rect.midX, y: rect.minY)])
                        path.closeSubpath()
                    }
                    .fill(color)


                    Rectangle()
                        .foregroundColor(color)
                        .frame(width: side / 5,height: side)
                        .position(x: rect.midX, y: rect.maxY + side / 2 )


                    Rectangle()
                        .foregroundColor(color)
                        .frame(width: side,height: side / 5)
                        .position(x: rect.midX, y: rect.maxY + side / 2)
                }
            }
            .frame(width: .infinity, height: .infinity)

        }
    }
}

struct Sulphur_Previews: PreviewProvider {
    static var previews: some View {
        Sulphur(color: .red)
            .frame(width: 100,height: 100)
            .rotationEffect(Angle(degrees: 0))
    }
}
