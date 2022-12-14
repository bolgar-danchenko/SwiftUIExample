//
//  ModelData.swift
//  SwiftUIExample
//
//  Created by Konstantin Bolgar-Danchenko on 14.12.2022.
//

import Foundation

var characters: [Character] = load("charactersData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle. Error: \(error.localizedDescription)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could'nt parse \(filename) as \(T.self). Error: \(error)")
    }
}
