//
//  CircleImage.swift
//  Landmarks
//
//  Created by Daniel Asamudo on 2025-12-24.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(.circle)
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("turtleRock"))
}
