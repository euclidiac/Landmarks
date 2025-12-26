//
//  Landmark.swift
//  Landmarks
//
//  Created by Daniel Asamudo on 2025-12-25.
//

import Foundation
// Base code.
import SwiftUI
// Things to do with display, like images.
import CoreLocation
// For location.

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavourite: Bool
    private var imageName: String
    // This variable is private because the data does not need to be pulled from an external source, but is only used to get another file.
    var image: Image {
        Image(imageName)
    }
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    // Uses function "CLLocationCoordinate2D" to set the latitude and longitude grabbed from the private variable coordinates, which takes it from the JSON file.
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
