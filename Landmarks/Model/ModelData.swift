//
//  ModelData.swift
//  Landmarks
//
//  Created by Daniel Asamudo on 2025-12-25.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Unable to find \(filename) in main bundle.")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Unable to load \(filename) from main bundle:\(error)")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Unable to parse \(filename) as \(T.self): \(error)")
    }
}
