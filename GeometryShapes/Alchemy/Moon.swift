//
//  Moon.swift
//  GeometryShapes
//
//  Created by Mohamed Alwakil on 2023-02-13.
//

import SwiftUI

struct Moon: View {

    let color: Color

    var body: some View {

        GeometryReader { geo in

            let frame = geo.frame(in: .local)

            ZStack {

                Circle()
                    .foregroundColor(color)

                Circle()
                    .foregroundColor(.white)
                    .offset(x: -50)
            }
            .frame(width: 200)
            .position(frame.center)
        }
    }
}

struct Moon_Previews: PreviewProvider {
    static var previews: some View {
        Moon(color: .gray)
            .background {
                Color.green
            }
    }
}


extension CGRect {
    var center: CGPoint {
        .init(x: midX, y: midY)
    }
}
