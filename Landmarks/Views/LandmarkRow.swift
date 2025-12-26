//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Daniel Asamudo on 2025-12-25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(.circle)
            Text(landmark.name)
            Spacer()
            if landmark.isFavourite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview("Turtle Rock") {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

