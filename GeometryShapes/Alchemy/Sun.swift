//
//  Sun.swift
//  GeometryShapes
//
//  Created by Mohamed Alwakil on 2023-02-13.
//

import SwiftUI

struct Sun: View {
    let color: Color

    var body: some View {

        GeometryReader { geo in
            let frame = geo.frame(in: .local)

            let side = min(frame.width, frame.height)
            Circle()
                .stroke(color, lineWidth: 3)
                .frame(width: side, height: side)
                .position(.init(x: frame.midX, y: frame.midY))
                .foregroundColor(.clear)

            Circle()
                .stroke(color, lineWidth: 3)
                .frame(width: side / 10)
                .position(.init(x: frame.midX, y: frame.midY))
                .foregroundColor(.clear)
        }
    }
}

struct Sun_Previews: PreviewProvider {
    static var previews: some View {
        Sun(color: .green)
            .frame(width: 100)
    }
}
