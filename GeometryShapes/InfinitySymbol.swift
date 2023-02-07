//
//  InfinitySymbol.swift
//  GeometryShapes
//
//  Created by Mohamed Alwakil on 2023-02-07.
//

import SwiftUI

struct InfinitySymbol: View {
    var body: some View {
        GeometryReader { geo in
            let frame = geo.frame(in: .local)
            let center = CGPoint(x: frame.midX, y: frame.midY)

            let rect = CGRect(origin: center, size: CGSize(width: 100, height: 90))
            Path { path in

                path.move(to: .zero)
                path.addEllipse(in: rect)

                let rect2 = rect.offsetBy(dx: -100, dy: 0)
                path.addEllipse(in: rect2)
            }
            .stroke(.green, lineWidth: 10)
        }
    }
}

struct InfinitySymbol_Previews: PreviewProvider {
    static var previews: some View {
        InfinitySymbol()
    }
}
