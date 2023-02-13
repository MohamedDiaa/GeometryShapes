//
//  BuiltInShapes.swift
//  GeometryShapes
//
//  Created by Mohamed Alwakil on 2023-02-13.
//

import SwiftUI

struct BuiltInShapes: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(.gray)
                .frame(width: 200, height: 200)

            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.red)
                .frame(width: 200, height: 200)

            Capsule()
                .fill(.green)
                .frame(width: 100, height: 50)

            Ellipse()
                .fill(.blue)
                .frame(width: 50, height: 100)

            Circle()
                .fill(.white)
                .frame(width: 100, height: 50)
        }
    }
}

struct BuiltInShapes_Previews: PreviewProvider {
    static var previews: some View {
        BuiltInShapes()
    }
}
