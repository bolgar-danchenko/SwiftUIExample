//
//  Character.swift
//  SwiftUIExample
//
//  Created by Konstantin Bolgar-Danchenko on 14.12.2022.
//

import Foundation
import SwiftUI

struct Character: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var game: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
}
