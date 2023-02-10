//
//  A-alphabet.swift
//  GeometryShapes
//
//  Created by Mohamed Alwakil on 2023-02-10.
//

import SwiftUI

struct A_alphabet: View {

    var body: some View {

        GeometryReader { geo in

            let frame = geo.frame(in: .local)

            ZStack{

                Line(pt1: .init(x: frame.midX, y: frame.minY),
                     pt2: .init(x: frame.minX, y: frame.maxY))
                .stroke(.green, lineWidth: 10)


                Line(pt1: .init(x: frame.midX, y: frame.minY),
                     pt2: .init(x: frame.maxX, y: frame.maxY))
                .stroke(.green, lineWidth: 10)


                Line(pt1: .init(x: frame.minX, y: frame.midY),
                     pt2: .init(x: frame.maxX, y: frame.midY))
                .stroke(.green, lineWidth: 10)

            }
        }
    }
}

struct A_alphabet_Previews: PreviewProvider {
    static var previews: some View {
        A_alphabet()
            .frame(width: 300, height: 300)
    }
}
